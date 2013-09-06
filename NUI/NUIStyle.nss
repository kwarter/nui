@mainBackground: KwarterAssets.bundle/kwarter_common_content_background.png;
@mainFontColor: white;

NavigationBar {
    background-image: KwarterAssets.bundle/kwarter_common_navbar_background.png;
    background-image-insets: 0 10 0 10;
}

BarButton {
    background-image: KwarterAssets.bundle/kwarter_common_navbar_button.png;
    background-image-insets: 0 10 0 10;
}

BarButtonBack {
    background-image: KwarterAssets.bundle/kwarter_common_navbar_back_button.png;
    background-image-insets: 0 6 0 12;
}

section {
    font-color: #DCDCDC;
    font-size: 16;
    font-name: Helvetica-Bold;
}

section:detail {
    font-color: black;
    font-size: 14;
    text-shadow-offset: 0,1;
    text-shadow-color: rgba(255,255,255,0.2);
}

badgeTemplateCell:title {
    font-size: 15;
    font-color: @mainFontColor;
    text-shadow-offset: 0, -1;
    text-shadow-color: black;
}

badgeTemplateCell:subtitle {
    font-color: gray;
    text-shadow-offset: 0, -1;
    text-shadow-color: black;
}

badgeTemplatesTriggerTable {
    height: 700;
}

contentView:eventMasterBadgeTemplates, contentView:eventMasterQuestionTemplates, contentView:eventMasterTrigger, contentView:eventMasterScores, contentView:eventMasterInfos {
    background-image: @mainBackground;
}

eventMasterScores:teamLabel {
    font-color: @mainFontColor;
}

questionTemplateCell:title {
    font-color: @mainFontColor;
}

questionTemplateCell:subtitle {
    font-color: gray;
}

eventMasterTrigger:title {
    font-color: @mainFontColor;
}

eventMasterTrigger:setATeam {
    font-color: @mainFontColor;
}

questionChoiceCell:title {
    font-color: lightGray;
    text-shadow-color: clear;
}

questionChoiceCell:title:selected {
    font-name: Helvetica-Bold;
    font-color: @mainFontColor;
}

selectTeamCell:title {
    text-shadow-color: clear;
    font-color: gray;
}

selectTeamCell:title:selected {
    font-color: #333333;
    text-shadow-color: @mainFontColor;
}

questionView:contentView {
    background-image: KwarterAssets.bundle/kwarter_question_background.png;
}

questionView:sectionTitle {
    font-name: Helvetica-Bold;
}

timelineView {
    background-image: @mainBackground;
}

questionCell:title {
    font-color: @mainFontColor;
}

questionCell:timeLabel, questionCell:correctAnswer {
    font-color: lightGray;
}

eventMasterStats:keyLabel {
    font-color: red;
}