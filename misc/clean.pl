#!/usr/bin/perl-w  -i 
my $css='<link rel="http://www.w3.org/StyleSheets/Core/Modernist" type="text/css">';
while ( <>) {
  s@<head>@<head>$css@;
  s@<title></title>@@;
s@^\s*\[1]\s+$@@;
  s@<p>\s*5in</p>@@g;
print;
}
