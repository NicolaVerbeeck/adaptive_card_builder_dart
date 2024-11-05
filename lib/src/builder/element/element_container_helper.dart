import 'package:adaptive_card_builder/src/builder/element/element_builder.dart';
import 'package:adaptive_card_builder/src/model/element.dart';

/// Helper mixing for creating elements in a container builder. For version 1.0
abstract mixin class ElementContainerHelperV1Dot0 {
  /// Add an element to the container
  void addElement(Element element);

  /// Add a text block to the container
  void addTextBlock(
    String text,
    void Function(TextBlockBuilderV1Dot0) builder,
  ) {
    addElement(TextBlockBuilderV1Dot0(text).apply(builder).build());
  }

  /// Add an image to the container
  void addImage(Uri url, void Function(ImageBuilderV1Dot0) builder) {
    addElement(ImageBuilderV1Dot0(url).apply(builder).build());
  }

  /// Add a container to the container
  void addContainer(void Function(ContainerBuilderV1Dot0) builder) {
    addElement(ContainerBuilderV1Dot0().apply(builder).build());
  }

  /// Add a column set to the container
  void addColumnSet(void Function(ColumnSetBuilderV1Dot0) builder) {
    addElement(ColumnSetBuilderV1Dot0().apply(builder).build());
  }

  /// Add a fact set to the container
  void addFactSet(void Function(FactSetBuilderV1Dot0) builder) {
    addElement(FactSetBuilderV1Dot0().apply(builder).build());
  }

  /// Add an image set to the container
  void addImageSet(void Function(ImageSetBuilderV1Dot0) builder) {
    addElement(ImageSetBuilderV1Dot0().apply(builder).build());
  }

  /// Add a text input to the container
  void addInputText(String id, void Function(TextInputBuilderV1Dot0) builder) {
    addElement(TextInputBuilderV1Dot0(id).apply(builder).build());
  }

  /// Add a number input to the container
  void addNumberInput(
    String id,
    void Function(NumberInputBuilderV1Dot0) builder,
  ) {
    addElement(NumberInputBuilderV1Dot0(id).apply(builder).build());
  }

  /// Add a date input to the container
  void addDateInput(String id, void Function(DateInputBuilderV1Dot0) builder) {
    addElement(DateInputBuilderV1Dot0(id).apply(builder).build());
  }

  /// Add a time input to the container
  void addTimeInput(String id, void Function(TimeInputBuilderV1Dot0) builder) {
    addElement(TimeInputBuilderV1Dot0(id).apply(builder).build());
  }

  /// Add a toggle input to the container
  void addToggleInput(
    String id,
    String title,
    void Function(ToggleInputBuilderV1Dot0) builder,
  ) {
    addElement(
      ToggleInputBuilderV1Dot0(id: id, title: title).apply(builder).build(),
    );
  }

  /// Add a choice set to the container
  void addChoiceSet(String id, void Function(ChoiceSetBuilderV1Dot0) builder) {
    addElement(ChoiceSetBuilderV1Dot0(id).apply(builder).build());
  }
}

/// Helper mixing for creating elements in a container builder. For version 1.1
abstract mixin class ElementContainerHelperV1Dot1 {
  /// Add an element to the container
  void addElement(Element element);

  /// Add a text block to the container
  void addTextBlock(
    String text,
    void Function(TextBlockBuilderV1Dot1) builder,
  ) {
    addElement(TextBlockBuilderV1Dot1(text).apply(builder).build());
  }

  /// Add an image to the container
  void addImage(Uri url, void Function(ImageBuilderV1Dot1) builder) {
    addElement(ImageBuilderV1Dot1(url).apply(builder).build());
  }

  /// Add a container to the container
  void addContainer(void Function(ContainerBuilderV1Dot1) builder) {
    addElement(ContainerBuilderV1Dot1().apply(builder).build());
  }

  /// Add a column set to the container
  void addColumnSet(void Function(ColumnSetBuilderV1Dot1) builder) {
    addElement(ColumnSetBuilderV1Dot1().apply(builder).build());
  }

  /// Add a fact set to the container
  void addFactSet(void Function(FactSetBuilderV1Dot1) builder) {
    addElement(FactSetBuilderV1Dot1().apply(builder).build());
  }

  /// Add an image set to the container
  void addImageSet(void Function(ImageSetBuilderV1Dot1) builder) {
    addElement(ImageSetBuilderV1Dot1().apply(builder).build());
  }

  /// Add a text input to the container
  void addInputText(String id, void Function(TextInputBuilderV1Dot1) builder) {
    addElement(TextInputBuilderV1Dot1(id).apply(builder).build());
  }

  /// Add a number input to the container
  void addNumberInput(
    String id,
    void Function(NumberInputBuilderV1Dot1) builder,
  ) {
    addElement(NumberInputBuilderV1Dot1(id).apply(builder).build());
  }

  /// Add a date input to the container
  void addDateInput(String id, void Function(DateInputBuilderV1Dot1) builder) {
    addElement(DateInputBuilderV1Dot1(id).apply(builder).build());
  }

  /// Add a time input to the container
  void addTimeInput(String id, void Function(TimeInputBuilderV1Dot1) builder) {
    addElement(TimeInputBuilderV1Dot1(id).apply(builder).build());
  }

  /// Add a toggle input to the container
  void addToggleInput(
    String id,
    String title,
    void Function(ToggleInputBuilderV1Dot1) builder,
  ) {
    addElement(
      ToggleInputBuilderV1Dot1(id: id, title: title).apply(builder).build(),
    );
  }

  /// Add a choice set to the container
  void addChoiceSet(String id, void Function(ChoiceSetBuilderV1Dot1) builder) {
    addElement(ChoiceSetBuilderV1Dot1(id).apply(builder).build());
  }

  /// Add a media to the container
  void addMedia(
    List<MediaSource> sources,
    void Function(MediaBuilderV1Dot1) builder,
  ) {
    addElement(MediaBuilderV1Dot1(sources).apply(builder).build());
  }
}

/// Helper mixing for creating elements in a container builder. For version 1.2
abstract mixin class ElementContainerHelperV1Dot2 {
  /// Add an element to the container
  void addElement(Element element);

  /// Add a text block to the container
  void addTextBlock(
    String text,
    void Function(TextBlockBuilderV1Dot2) builder,
  ) {
    addElement(TextBlockBuilderV1Dot2(text).apply(builder).build());
  }

  /// Add an image to the container
  void addImage(Uri url, void Function(ImageBuilderV1Dot2) builder) {
    addElement(ImageBuilderV1Dot2(url).apply(builder).build());
  }

  /// Add a container to the container
  void addContainer(void Function(ContainerBuilderV1Dot2) builder) {
    addElement(ContainerBuilderV1Dot2().apply(builder).build());
  }

  /// Add a column set to the container
  void addColumnSet(void Function(ColumnSetBuilderV1Dot2) builder) {
    addElement(ColumnSetBuilderV1Dot2().apply(builder).build());
  }

  /// Add a fact set to the container
  void addFactSet(void Function(FactSetBuilderV1Dot2) builder) {
    addElement(FactSetBuilderV1Dot2().apply(builder).build());
  }

  /// Add an image set to the container
  void addImageSet(void Function(ImageSetBuilderV1Dot2) builder) {
    addElement(ImageSetBuilderV1Dot2().apply(builder).build());
  }

  /// Add a text input to the container
  void addInputText(String id, void Function(TextInputBuilderV1Dot2) builder) {
    addElement(TextInputBuilderV1Dot2(id).apply(builder).build());
  }

  /// Add a number input to the container
  void addNumberInput(
    String id,
    void Function(NumberInputBuilderV1Dot2) builder,
  ) {
    addElement(NumberInputBuilderV1Dot2(id).apply(builder).build());
  }

  /// Add a date input to the container
  void addDateInput(String id, void Function(DateInputBuilderV1Dot2) builder) {
    addElement(DateInputBuilderV1Dot2(id).apply(builder).build());
  }

  /// Add a time input to the container
  void addTimeInput(String id, void Function(TimeInputBuilderV1Dot2) builder) {
    addElement(TimeInputBuilderV1Dot2(id).apply(builder).build());
  }

  /// Add a toggle input to the container
  void addToggleInput(
    String id,
    String title,
    void Function(ToggleInputBuilderV1Dot2) builder,
  ) {
    addElement(
      ToggleInputBuilderV1Dot2(id: id, title: title).apply(builder).build(),
    );
  }

  /// Add a choice set to the container
  void addChoiceSet(String id, void Function(ChoiceSetBuilderV1Dot2) builder) {
    addElement(ChoiceSetBuilderV1Dot2(id).apply(builder).build());
  }

  /// Add a media to the container
  void addMedia(
    List<MediaSource> sources,
    void Function(MediaBuilderV1Dot1) builder,
  ) {
    addElement(MediaBuilderV1Dot1(sources).apply(builder).build());
  }

  /// Add a rich text block to the container
  void addRichTextBlock(void Function(RichTextBlockBuilderV1Dot2) builder) {
    addElement(RichTextBlockBuilderV1Dot2().apply(builder).build());
  }

  /// Add an action set to the container
  void addActionSet(void Function(ActionSetBuilderV1Dot2) builder) {
    addElement(ActionSetBuilderV1Dot2().apply(builder).build());
  }
}

/// Helper mixing for creating elements in a container builder. For version 1.3
abstract mixin class ElementContainerHelperV1Dot3 {
  /// Add an element to the container
  void addElement(Element element);

  /// Add a text block to the container
  void addTextBlock(
    String text,
    void Function(TextBlockBuilderV1Dot2) builder,
  ) {
    addElement(TextBlockBuilderV1Dot2(text).apply(builder).build());
  }

  /// Add an image to the container
  void addImage(Uri url, void Function(ImageBuilderV1Dot2) builder) {
    addElement(ImageBuilderV1Dot2(url).apply(builder).build());
  }

  /// Add a container to the container
  void addContainer(void Function(ContainerBuilderV1Dot3) builder) {
    addElement(ContainerBuilderV1Dot3().apply(builder).build());
  }

  /// Add a column set to the container
  void addColumnSet(void Function(ColumnSetBuilderV1Dot2) builder) {
    addElement(ColumnSetBuilderV1Dot2().apply(builder).build());
  }

  /// Add a fact set to the container
  void addFactSet(void Function(FactSetBuilderV1Dot2) builder) {
    addElement(FactSetBuilderV1Dot2().apply(builder).build());
  }

  /// Add an image set to the container
  void addImageSet(void Function(ImageSetBuilderV1Dot2) builder) {
    addElement(ImageSetBuilderV1Dot2().apply(builder).build());
  }

  /// Add a text input to the container
  void addInputText(String id, void Function(TextInputBuilderV1Dot3) builder) {
    addElement(TextInputBuilderV1Dot3(id).apply(builder).build());
  }

  /// Add a number input to the container
  void addNumberInput(
    String id,
    void Function(NumberInputBuilderV1Dot3) builder,
  ) {
    addElement(NumberInputBuilderV1Dot3(id).apply(builder).build());
  }

  /// Add a date input to the container
  void addDateInput(String id, void Function(DateInputBuilderV1Dot3) builder) {
    addElement(DateInputBuilderV1Dot3(id).apply(builder).build());
  }

  /// Add a time input to the container
  void addTimeInput(String id, void Function(TimeInputBuilderV1Dot3) builder) {
    addElement(TimeInputBuilderV1Dot3(id).apply(builder).build());
  }

  /// Add a toggle input to the container
  void addToggleInput(
    String id,
    String title,
    void Function(ToggleInputBuilderV1Dot3) builder,
  ) {
    addElement(
      ToggleInputBuilderV1Dot3(id: id, title: title).apply(builder).build(),
    );
  }

  /// Add a choice set to the container
  void addChoiceSet(String id, void Function(ChoiceSetBuilderV1Dot3) builder) {
    addElement(ChoiceSetBuilderV1Dot3(id).apply(builder).build());
  }

  /// Add a media to the container
  void addMedia(
    List<MediaSource> sources,
    void Function(MediaBuilderV1Dot2) builder,
  ) {
    addElement(MediaBuilderV1Dot2(sources).apply(builder).build());
  }

  /// Add a rich text block to the container
  void addRichTextBlock(void Function(RichTextBlockBuilderV1Dot2) builder) {
    addElement(RichTextBlockBuilderV1Dot2().apply(builder).build());
  }

  /// Add an action set to the container
  void addActionSet(void Function(ActionSetBuilderV1Dot2) builder) {
    addElement(ActionSetBuilderV1Dot2().apply(builder).build());
  }
}

/// Helper mixing for creating elements in a container builder. For version 1.4
abstract mixin class ElementContainerHelperV1Dot4 {
  /// Add an element to the container
  void addElement(Element element);

  /// Add a text block to the container
  void addTextBlock(
    String text,
    void Function(TextBlockBuilderV1Dot2) builder,
  ) {
    addElement(TextBlockBuilderV1Dot2(text).apply(builder).build());
  }

  /// Add an image to the container
  void addImage(Uri url, void Function(ImageBuilderV1Dot4) builder) {
    addElement(ImageBuilderV1Dot4(url).apply(builder).build());
  }

  /// Add a container to the container
  void addContainer(void Function(ContainerBuilderV1Dot4) builder) {
    addElement(ContainerBuilderV1Dot4().apply(builder).build());
  }

  /// Add a column set to the container
  void addColumnSet(void Function(ColumnSetBuilderV1Dot2) builder) {
    addElement(ColumnSetBuilderV1Dot2().apply(builder).build());
  }

  /// Add a fact set to the container
  void addFactSet(void Function(FactSetBuilderV1Dot2) builder) {
    addElement(FactSetBuilderV1Dot2().apply(builder).build());
  }

  /// Add an image set to the container
  void addImageSet(void Function(ImageSetBuilderV1Dot2) builder) {
    addElement(ImageSetBuilderV1Dot2().apply(builder).build());
  }

  /// Add a text input to the container
  void addInputText(String id, void Function(TextInputBuilderV1Dot4) builder) {
    addElement(TextInputBuilderV1Dot4(id).apply(builder).build());
  }

  /// Add a number input to the container
  void addNumberInput(
    String id,
    void Function(NumberInputBuilderV1Dot3) builder,
  ) {
    addElement(NumberInputBuilderV1Dot3(id).apply(builder).build());
  }

  /// Add a date input to the container
  void addDateInput(String id, void Function(DateInputBuilderV1Dot3) builder) {
    addElement(DateInputBuilderV1Dot3(id).apply(builder).build());
  }

  /// Add a time input to the container
  void addTimeInput(String id, void Function(TimeInputBuilderV1Dot3) builder) {
    addElement(TimeInputBuilderV1Dot3(id).apply(builder).build());
  }

  /// Add a toggle input to the container
  void addToggleInput(
    String id,
    String title,
    void Function(ToggleInputBuilderV1Dot3) builder,
  ) {
    addElement(
      ToggleInputBuilderV1Dot3(id: id, title: title).apply(builder).build(),
    );
  }

  /// Add a choice set to the container
  void addChoiceSet(String id, void Function(ChoiceSetBuilderV1Dot3) builder) {
    addElement(ChoiceSetBuilderV1Dot3(id).apply(builder).build());
  }

  /// Add a media to the container
  void addMedia(
    List<MediaSource> sources,
    void Function(MediaBuilderV1Dot2) builder,
  ) {
    addElement(MediaBuilderV1Dot2(sources).apply(builder).build());
  }

  /// Add a rich text block to the container
  void addRichTextBlock(void Function(RichTextBlockBuilderV1Dot4) builder) {
    addElement(RichTextBlockBuilderV1Dot4().apply(builder).build());
  }

  /// Add an action set to the container
  void addActionSet(void Function(ActionSetBuilderV1Dot4) builder) {
    addElement(ActionSetBuilderV1Dot4().apply(builder).build());
  }
}

/// Helper mixing for creating elements in a container builder. For version 1.5
abstract mixin class ElementContainerHelperV1Dot5 {
  /// Add an element to the container
  void addElement(Element element);

  /// Add a text block to the container
  void addTextBlock(
    String text,
    void Function(TextBlockBuilderV1Dot5) builder,
  ) {
    addElement(TextBlockBuilderV1Dot5(text).apply(builder).build());
  }

  /// Add an image to the container
  void addImage(Uri url, void Function(ImageBuilderV1Dot5) builder) {
    addElement(ImageBuilderV1Dot5(url).apply(builder).build());
  }

  /// Add a container to the container
  void addContainer(void Function(ContainerBuilderV1Dot5) builder) {
    addElement(ContainerBuilderV1Dot5().apply(builder).build());
  }

  /// Add a column set to the container
  void addColumnSet(void Function(ColumnSetBuilderV1Dot5) builder) {
    addElement(ColumnSetBuilderV1Dot5().apply(builder).build());
  }

  /// Add a fact set to the container
  void addFactSet(void Function(FactSetBuilderV1Dot2) builder) {
    addElement(FactSetBuilderV1Dot2().apply(builder).build());
  }

  /// Add an image set to the container
  void addImageSet(void Function(ImageSetBuilderV1Dot2) builder) {
    addElement(ImageSetBuilderV1Dot2().apply(builder).build());
  }

  /// Add a text input to the container
  void addInputText(String id, void Function(TextInputBuilderV1Dot5) builder) {
    addElement(TextInputBuilderV1Dot5(id).apply(builder).build());
  }

  /// Add a number input to the container
  void addNumberInput(
    String id,
    void Function(NumberInputBuilderV1Dot3) builder,
  ) {
    addElement(NumberInputBuilderV1Dot3(id).apply(builder).build());
  }

  /// Add a date input to the container
  void addDateInput(String id, void Function(DateInputBuilderV1Dot3) builder) {
    addElement(DateInputBuilderV1Dot3(id).apply(builder).build());
  }

  /// Add a time input to the container
  void addTimeInput(String id, void Function(TimeInputBuilderV1Dot3) builder) {
    addElement(TimeInputBuilderV1Dot3(id).apply(builder).build());
  }

  /// Add a toggle input to the container
  void addToggleInput(
    String id,
    String title,
    void Function(ToggleInputBuilderV1Dot3) builder,
  ) {
    addElement(
      ToggleInputBuilderV1Dot3(id: id, title: title).apply(builder).build(),
    );
  }

  /// Add a choice set to the container
  void addChoiceSet(String id, void Function(ChoiceSetBuilderV1Dot3) builder) {
    addElement(ChoiceSetBuilderV1Dot3(id).apply(builder).build());
  }

  /// Add a media to the container
  void addMedia(
    List<MediaSource> sources,
    void Function(MediaBuilderV1Dot2) builder,
  ) {
    addElement(MediaBuilderV1Dot2(sources).apply(builder).build());
  }

  /// Add a rich text block to the container
  void addRichTextBlock(void Function(RichTextBlockBuilderV1Dot5) builder) {
    addElement(RichTextBlockBuilderV1Dot5().apply(builder).build());
  }

  /// Add an action set to the container
  void addActionSet(void Function(ActionSetBuilderV1Dot5) builder) {
    addElement(ActionSetBuilderV1Dot5().apply(builder).build());
  }
}

extension _ApplyExtension<T> on T {
  T apply(void Function(T) builder) {
    builder(this);
    return this;
  }
}
