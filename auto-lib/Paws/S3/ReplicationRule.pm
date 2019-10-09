package Paws::S3::ReplicationRule;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::S3::Types qw/S3_ReplicationRuleFilter S3_Destination S3_SourceSelectionCriteria S3_DeleteMarkerReplication/;
  has DeleteMarkerReplication => (is => 'ro', isa => S3_DeleteMarkerReplication);
  has Destination => (is => 'ro', isa => S3_Destination, required => 1);
  has Filter => (is => 'ro', isa => S3_ReplicationRuleFilter);
  has ID => (is => 'ro', isa => Str);
  has Prefix => (is => 'ro', isa => Str);
  has Priority => (is => 'ro', isa => Int);
  has SourceSelectionCriteria => (is => 'ro', isa => S3_SourceSelectionCriteria);
  has Status => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ID' => {
                         'type' => 'Str'
                       },
               'Status' => {
                             'type' => 'Str'
                           },
               'DeleteMarkerReplication' => {
                                              'class' => 'Paws::S3::DeleteMarkerReplication',
                                              'type' => 'S3_DeleteMarkerReplication'
                                            },
               'Destination' => {
                                  'class' => 'Paws::S3::Destination',
                                  'type' => 'S3_Destination'
                                },
               'SourceSelectionCriteria' => {
                                              'class' => 'Paws::S3::SourceSelectionCriteria',
                                              'type' => 'S3_SourceSelectionCriteria'
                                            },
               'Filter' => {
                             'class' => 'Paws::S3::ReplicationRuleFilter',
                             'type' => 'S3_ReplicationRuleFilter'
                           },
               'Prefix' => {
                             'type' => 'Str'
                           },
               'Priority' => {
                               'type' => 'Int'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ReplicationRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::ReplicationRule object:

  $service_obj->Method(Att1 => { DeleteMarkerReplication => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::ReplicationRule object:

  $result = $service_obj->Method(...);
  $result->Att1->DeleteMarkerReplication

=head1 DESCRIPTION

Specifies which Amazon S3 objects to replicate and where to store the
replicas.

=head1 ATTRIBUTES


=head2 DeleteMarkerReplication => S3_DeleteMarkerReplication

  


=head2 B<REQUIRED> Destination => S3_Destination

  A container for information about the replication destination.


=head2 Filter => S3_ReplicationRuleFilter

  


=head2 ID => Str

  A unique identifier for the rule. The maximum value is 255 characters.


=head2 Prefix => Str

  An object keyname prefix that identifies the object or objects to which
the rule applies. The maximum prefix length is 1,024 characters. To
include all objects in a bucket, specify an empty string.


=head2 Priority => Int

  The priority associated with the rule. If you specify multiple rules in
a replication configuration, Amazon S3 prioritizes the rules to prevent
conflicts when filtering. If two or more rules identify the same object
based on a specified filter, the rule with higher priority takes
precedence. For example:

=over

=item *

Same object quality prefix based filter criteria If prefixes you
specified in multiple rules overlap

=item *

Same object qualify tag based filter criteria specified in multiple
rules

=back

For more information, see Cross-Region Replication (CRR)
(https://docs.aws.amazon.com/AmazonS3/latest/dev/crr.html) in the
I<Amazon S3 Developer Guide>.


=head2 SourceSelectionCriteria => S3_SourceSelectionCriteria

  A container that describes additional filters for identifying the
source objects that you want to replicate. You can choose to enable or
disable the replication of these objects. Currently, Amazon S3 supports
only the filter that you can specify for objects created with
server-side encryption using an AWS KMS-Managed Key (SSE-KMS).


=head2 B<REQUIRED> Status => Str

  Specifies whether the rule is enabled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

