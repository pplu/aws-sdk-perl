package Paws::S3::ReplicationRule;
  use Moose;
  has Destination => (is => 'ro', isa => 'Paws::S3::Destination', required => 1);
  has ID => (is => 'ro', isa => 'Str');
  has Prefix => (is => 'ro', isa => 'Str', required => 1);
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

  $service_obj->Method(Att1 => { Destination => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::ReplicationRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

Container for information about a particular replication rule.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destination => L<Paws::S3::Destination>

  Container for replication destination information.


=head2 ID => Str

  Unique identifier for the rule. The value cannot be longer than 255
characters.


=head2 B<REQUIRED> Prefix => Str

  Object keyname prefix identifying one or more objects to which the rule
applies. Maximum prefix length can be up to 1,024 characters.
Overlapping prefixes are not supported.


=head2 SourceSelectionCriteria => L<Paws::S3::SourceSelectionCriteria>

  Container for filters that define which source objects should be
replicated.


=head2 B<REQUIRED> Status => Str

  The rule is ignored if status is not Enabled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

