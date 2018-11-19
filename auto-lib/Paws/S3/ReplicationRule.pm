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

A container for information about a specific replication rule.

=head1 ATTRIBUTES


=head2 DeleteMarkerReplication => L<Paws::S3::DeleteMarkerReplication>

  


=head2 B<REQUIRED> Destination => L<Paws::S3::Destination>

  A container for information about the replication destination.


=head2 Filter => L<Paws::S3::ReplicationRuleFilter>

  


=head2 ID => Str

  A unique identifier for the rule. The maximum value is 255 characters.


=head2 Prefix => Str

  An object keyname prefix that identifies the object or objects to which
the rule applies. The maximum prefix length is 1,024 characters.


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

For more information, see Cross-Region Replication (CRR) in the
I<Amazon S3 Developer Guide>.


=head2 SourceSelectionCriteria => L<Paws::S3::SourceSelectionCriteria>

  A container that describes additional filters for identifying the
source objects that you want to replicate. You can choose to enable or
disable the replication of these objects. Currently, Amazon S3 supports
only the filter that you can specify for objects created with
server-side encryption using an AWS KMS-Managed Key (SSE-KMS).

If you want Amazon S3 to replicate objects created with server-side
encryption using AWS KMS-Managed Keys.


=head2 B<REQUIRED> Status => Str

  If status isn't enabled, the rule is ignored.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

