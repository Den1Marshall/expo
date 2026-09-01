import { createModifier } from './createModifier';
import { resolveShapeStyle, type ShapeStyle } from './shapeStyle';

export type ContainerBackgroundPlacement = 'widget' | 'navigation' | 'navigationSplitView';

/**
 * Sets the container background of the enclosing container.
 * @param style - The style to paint the container background with.
 * @param container - The type of container to apply the background to.
 * @see Official [SwiftUI documentation](https://developer.apple.com/documentation/swiftui/view/containerbackground(_:for:)).
 */
export const containerBackground = (style: ShapeStyle, container: ContainerBackgroundPlacement) =>
  createModifier('containerBackground', { style: resolveShapeStyle(style), container });
