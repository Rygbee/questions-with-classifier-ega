/* Copyright IBM Corp. 2015 Licensed under the Apache License, Version 2.0 */

<home>
    
    <header></header>
    <div class="home-body">
    	<h3 if={this.initialViewing} class="getting-started-mobile"><b>{subtitleText}</b></h3>
        <loading-indicator id="loadIcon" setindicator={initIndicator}></loading-indicator>
        <home-tab-container class="home-tab-container"></home-tab-container>
        <ask-question id="askQuestionTag" class="ask-question-tag initialViewing" showindicator={showIndicator} hideindicator={hideIndicator}></ask-question>
    </div>

    <script>
    var action    = require("./action.js"),
        self      = this;
    self.subtitleText = polyglot.t("subTitle");
    
    self.on("mount", function() {
        this.initialViewing = true;
        self.update();
    });
    
    self.on("update", function() {
        if (self.askQuestionTag && !self.askQuestionTag.classList.contains("initialViewing")) {
            this.initialViewing = false;
        }
    });

    initIndicator(indicatorCalls) {
        self.indicatorCalls = indicatorCalls;
    }

    showIndicator() {
        self.indicatorCalls["showIndicator"]();
    }

    hideIndicator() {
        self.indicatorCalls["hideIndicator"]();
    }
    
    </script>
</home>
