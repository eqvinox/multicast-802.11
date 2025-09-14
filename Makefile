DRAFTS = \
	 draft-ietf-6man-ieee80211-fms.xml \
	 # end


.PHONY: love clean
love: $(patsubst %.xml,%.txt,$(DRAFTS)) $(patsubst %.xml,%.html,$(DRAFTS))
clean:
	rm -f $(patsubst %.xml,%.txt,$(DRAFTS))
	rm -f $(patsubst %.xml,%.html,$(DRAFTS))

%.txt: %.xml
	xml2rfc --text -o $@ $^
%.html: %.xml
	xml2rfc --html -o $@ $^
