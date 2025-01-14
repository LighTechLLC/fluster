/*
 * Created by Alfonso Cejudo, Wednesday, July 24th 2019.
 */

abstract class Clusterable {
  /// Either an individual data point's latitude or the center point latitude of
  /// a cluster's children.
  final double? latitude;

  /// Either an individual data point's longitude or the center point longitude
  /// of a cluster's children.
  final double? longitude;

  /// Denote that the instance is either a cluster or an individual data point.
  final bool isCluster;

  /// Unique id for use in cluster algorithm indexing.
  final int? clusterId;

  /// If instance is a cluster, this is the number of child points it contains
  /// that are not themselves also clusters.
  final int? pointsSize;

  /// Attach the unique id of the instance's corresponding map marker so that
  /// it can be used as a childMarkerId for clusters.
  final String? markerId;

  /// Useful for representing a cluster by referencing one of its children.
  final String? childMarkerId;

  Clusterable(
      {this.latitude,
        this.longitude,
        this.isCluster = false,
        this.clusterId,
        this.pointsSize,
        this.markerId,
        this.childMarkerId});
}
