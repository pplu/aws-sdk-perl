package Paws::S3::ReplicationRule;
  use Moose;
  has DeleteMarkerReplication => (is => 'ro', isa => 'Paws::S3::DeleteMarkerReplication');
  has Destination => (is => 'ro', isa => 'Paws::S3::Destination', required => 1);
  has Filter => (is => 'ro', isa => 'Paws::S3::ReplicationRuleFilter');
  has ID => (is => 'ro', isa => 'Str');
  has Prefix => (is => 'ro', isa => 'Str');
  has Priority => (is => 'ro', isa => 'Int');
  has SourceSelectionCriteria => (is => 'ro', isa => 'Paws::S3::SourceSelectionCriteria');
  has Status => (is => 'ro', isa => 'Str', required => 1);
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

Container for information about a particular replication rule.

=head1 ATTRIBUTES


=head2 DeleteMarkerReplication => L<Paws::S3::DeleteMarkerReplication>

  


=head2 B<REQUIRED> Destination => L<Paws::S3::Destination>

  Container for replication destination information.


=head2 Filter => L<Paws::S3::ReplicationRuleFilter>

  


=head2 ID => Str

  Unique identifier for the rule. The value cannot be longer than 255
characters.


=head2 Prefix => Str

  Object keyname prefix identifying one or more objects to which the rule
applies. Maximum prefix length can be up to 1,024 characters.


=head2 Priority => Int

  The priority associated with the rule. If you specify multiple rules in
a replication configuration, then Amazon S3 applies rule priority in
the event there are conflicts (two or more rules identify the same
object based on filter specified). The rule with higher priority takes
precedence. For example,

=over

=item *

Same object quality prefix based filter criteria If prefixes you
specified in multiple rules overlap.

=item *

Same object qualify tag based filter criteria specified in multiple
rules

=back

For more information, see Cross-Region Replication (CRR) in the Amazon
S3 Developer Guide.


=head2 SourceSelectionCriteria => L<Paws::S3::SourceSelectionCriteria>

  Container that describes additional filters in identifying source
objects that you want to replicate. Currently, Amazon S3 supports only
the filter that you can specify for objects created with server-side
encryption using an AWS KMS-managed key. You can choose to enable or
disable replication of these objects.

if you want Amazon S3 to replicate objects created with server-side
encryption using AWS KMS-managed keys.


=head2 B<REQUIRED> Status => Str

  The rule is ignored if status is not Enabled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

