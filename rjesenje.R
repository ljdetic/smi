# Copyright (c) 2014, Mislav Bozicevic <misbozice@foi.hr>
#
# Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

# ucitavanje podataka
datoteka <- "data.txt"
podaci <- read.table(datoteka, header = T, sep = "\t")

# pomocne funkcije
je_instaliran <- function(paket) is.element(paket, installed.packages()[,1])
ucitaj_ili_instaliraj <- function(paketi){
	for(paket in paketi){
		if(!je_instaliran(paket)){
			install.packages(paket, repos="http://cran.at.r-project.org/")
		}
		library(paket, character.only=T, quietly=T, verbose=F)
	}
}

# a) dio zadatka
ucitaj_ili_instaliraj("psych")
describe(podaci)
# TODO: provjeriti parsira li dobro '*' u podacima gornja funkcija

