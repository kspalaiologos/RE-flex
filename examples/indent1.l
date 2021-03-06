// This example demonstrates indent \i and dedent \j matching
%o main tabs=8
%%
^\h+                      out() << "| "; // nodent, text is aligned to current margin column
^\h+\i                    out() << "> "; // indent
^\h*\j                    out() << "< "; // dedent
\j                        out() << "< "; // dedent, triggered for each extra level dedented
(?^^\h*\n)                // eat empty lines without affecting indent stops
(?^^\h*"/*"(.|\n)*?"*/")  // eat /*-comments that start a line without affecting indent stops
(?^\\\n\h*)               // lines ending in \ will continue on the next line
(?^"/*"(.|\n)*?"*/")      // eat /*-comments
.|\n                      echo(); // ECHO character
%%
