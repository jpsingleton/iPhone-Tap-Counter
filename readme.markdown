# iPhone Tap Counter

I made a very quick iOS app for my iPhone to allow me to measure the frequency of things by recording the time period. Repeatedly tap the big button and it spits out a number.

If you want to measure the instantaneous power consumption of your home by timing the gaps between LED flashes or wheel spins of your electricity meter then you can use this code [NSString stringWithFormat: @"%2.f Watts",(1/([lastTapTime timeIntervalSinceNow]*-1))*360];.

If you want to measure the beats per minute of a song or your pulse then you can use this code [NSString stringWithFormat: @"%2.f b.p.m.",(1/([lastTapTime timeIntervalSinceNow]*-1))*60];.

Download the source code and give it a go yourself. You’ll need Xcode from Apple.

## Creative Commons License

This work is licensed under a Creative Commons Attribution 3.0 Unported License.