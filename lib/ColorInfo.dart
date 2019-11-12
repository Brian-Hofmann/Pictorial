class ColorInfo {
  String getColorDescription(String color) {
    if (int.parse(color) <= int.parse('0000ff', radix: 16) &&
        int.parse(color) >= int.parse('000030', radix: 16)) {
      //test blue
      return "Blue\n" +
          "The color of the sea and sky, it has a quality of cool expansiveness and openness. Soft, soothing, compassionate and caring, blue is an introspective color. Blue is often a formal color "
              "which represents wisdom and steady character.  Many superheroes wear blue! It is considered a masculine color and the choice of corporate America. But, the quiet character and poetic "
              "subtlety of blue can also be associated with melancholy and resignation. Remember Pablo Picasso’s infamous “Blue Period” of art? Picasso’s personal trauma found expression in a series "
              "of deeply sentimental paintings which comprise his “Blue Period”.  I even dedicated a helpful post to artists who find themselves Feeling Blue…\n" +
          "retrieved from: retrieved from: www.finearttips.com";
    } else if (int.parse(color) <= int.parse('00ff00', radix: 16) &&
        int.parse(color) >= int.parse('002500', radix: 16)) {
      //test green
      return "Green\n" +
          "The color of harmony, balance and security. Green also has a calming effect and symbolic meaning of hope, peace, gentleness and modesty. It is soothing, refined and "
              "civilized with great healing power.  Green suggests stability and endurance, hope and growth.  It sometimes denotes lack of experience, for example a ‘green-horn’ is a novice. "
              "Pale greens are particularly restful.  Dark greens remind us of money, banking and Wall Street. However, at times yellow-green is used to portray sickness, discord and jealousy.  "
              "Remember the phrase, “green with envy”??\n" +
          "retrieved from: retrieved from: www.finearttips.com";
    } else if (int.parse(color) <= int.parse('ff0000', radix: 16) &&
        int.parse(color) >= int.parse('560000', radix: 16)) {
      //test red
      return "Red\n" +
          "The color of assertion, strength, romance, excitement, vitality, physical power, outgoing, ambitious and impulsive. It is a color that flatters "
              "the skin and can make an excellent background. Pale pink are warm and peaceful and combine well with greens. The deeper reds create an atmosphere "
              "of retrained opulence and power. Red elicits an uncomplicated nature with a zest for life.  But, red can also connote danger or threats.  Fire engines, "
              "stop signs and traffic lights are a perfect example.\n" +
          "retrieved from: retrieved from: www.finearttips.com";
    } else if (int.parse(color) <= int.parse('7f3232', radix: 16) &&
        int.parse(color) >= int.parse('1c0000', radix: 16)) {
      //test brown
      return "Brown\n" +
          "The color of living wood and the earth. Rich, subtle and extraordinarily "
              "restful to look upon, brown creates a feeling of coolness and warmth at the same time. "
              "It combines well with rich colors such as purple and gold (popular in the Victorian era). I"
              "t is a steady, dependable, conservative, conscientious and reliable color.  Brown evokes a sense of "
              "nostalgia and reminds us of the great works of Rembrandt, Titian and Rubens.   Tonalism used rich earth tones "
              "and muted colors to create moody landscapes.  Van Gogh’s used a lot of brown to set a somber and depressed mood in "
              "the famous painting The Potato Eaters .  Think back on Soviet Russia and you might remember the common people usually wore shades of brown.\n" +
          "retrieved from: retrieved from: www.finearttips.com";
    } else if (int.parse(color) <= int.parse('ffffd8', radix: 16) &&
        int.parse(color) >= int.parse('626200', radix: 16)) {
      //test yellow
      return "Yellow\n" +
          "We associate yellow with sunshine and it represents light. It creates a feeling of hope, happiness and wisdom. The color evokes an optimistic sense of well being and natural light. It is airy, "
              "radiant and atmospheric. Yellow gives the feeling that all is okay with the world. An example of this is Luminism, an early generation of landscape painters who explored ways to depict light "
              "realistically on canvas by using color to depict a melodramatic or romantic mood.  But, yellow is a complicated color. On one hand, it is considered ‘light-hearted’ and childlike, but actually "
              "it is known to make babies cry.  Although, light-yellow represents intellect, freshness and joy, dull-yellow is associated with caution, decay, sickness and jealousy.  Yellow at times is cowardice.  "
              "The phrase, ‘yellow-bellied-coward” came into use around 1910 which probably derives from yellow’s association with both treason and weakness.  More than a millennium ago, Judas Iscariot was often "
              "portrayed in yellow garb symbolizing his betrayal of Jesus Christ – a cowardly act.  In America’s pioneer days, yellow dogs were considered worthless and the term “yellow dog” came to be used to describe "
              "anything worthless. Our observation of the yellow of tree leaves as they age and die, as well as the yellowing of old books and papers, led to the association of yellow with old age and illness.  "
              "But, yellow is very effective at attracting attention – think of a taxi cab.  Yellow is also used as a warning symbol. In football, a ‘yellow flag’ issues a warning.  When place alongside black, "
              "yellow issues a  warning.  Yellow is also used in traffic lights and signs to advice us of danger.  The list goes on and on…\n" +
          "retrieved from: www.finearttips.com";
    } else if (int.parse(color) <= int.parse('e2c4ff', radix: 16) &&
        int.parse(color) >= int.parse('310062', radix: 16)) {
      //test purple
      return "Purple\n" +
          "A combination of red and blue, purples are regal and dignified to be used with discretion. Pale shades are restful and serene, but the darker shades make it difficult to focus. "
              "Lavenders signify refined things of life, creative, witty and civilized. Purples can be tiring on the eyes and cause a sense of frustration, but it can make an excellent foil for "
              "works of art.  Gloom and sad feelings can be portrayed by using purples.\n" +
          "retrieved from: www.finearttips.com";
    } else if (int.parse(color) <= int.parse('ffd8b1', radix: 16) &&
        int.parse(color) >= int.parse('9d4f00', radix: 16)) {
      //test orange
      return "Orange\n" +
          "Midway between red and orange it is a cheerful color. It is a flamboyant and lively color. Orange can be assertive, dynamic, and spontaneous and signifies youth and fearlessness. Orange stimulates the brain and produces "
              "oxygen and mental activity.  Dark-orange signifies deceit or distrust, whereas red-orange can correspond to aggression, domination and thirst for action.\n" +
          "retrieved from: www.finearttips.com";
    } else if (int.parse(color) <= int.parse('d6d6d6', radix: 16) &&
        int.parse(color) >= int.parse('ffffff', radix: 16)) {
      //test white
      return "White\n" +
          "Symbolic of safety, cleanliness and purity. White emanates youth, perfection and innocence. Angels are usually thought of as white. White is simplicity and freshness, "
              "but too much can give a clinical feeling. Doctors, hospitals and sterility are associated the white. Low fat foods and dairy products use white in their packaging. "
              "But, in many Eastern cultures, white signifies death, mourning, funerals and unhappiness.  Ghosts are white and giving white flowers to the sick is bad luck in many cultures.  "
              "In painting, use white sparingly. It can make colors chalky and lifeless.\n" +
          "retrieved from: www.finearttips.com";
    } else if (int.parse(color) <= int.parse('cccccc', radix: 16) &&
        int.parse(color) >= int.parse('333333', radix: 16)) {
      //test grey
      return "Grey\n" +
          "This color represents caution and compromise. Many beautiful greys can be made by mixing complimentary colors together. Greys give a sense of peace to the viewer.\n" +
          "retrieved from: www.finearttips.com";
    } else if (int.parse(color) <= int.parse('292929', radix: 16) &&
        int.parse(color) >= int.parse('000000', radix: 16)) {
      //test black
      return "Black\n" +
          " Mysterious and hidden, black can have a morbid feeling. It gives us a feeling of the unknown and negative connotations like, black-hole, blacklist, black-humor or black-death. "
              " In most Western cultures, black is the symbol of grief.  However, black can be dignified and showy with sophistication. "
              "Black will also punctuate color schemes that rely on strong contrasting colors. Try mixing your own blacks, rather than using it straight from the tube.\n" +
          "retrieved from: www.finearttips.com";
    } else {
      return null;
    }
  }
}