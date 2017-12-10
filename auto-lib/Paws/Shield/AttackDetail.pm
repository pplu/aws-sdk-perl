package Paws::Shield::AttackDetail;
  use Moose;
  has AttackCounters => (is => 'ro', isa => 'ArrayRef[Paws::Shield::SummarizedCounter]');
  has AttackId => (is => 'ro', isa => 'Str');
  has AttackProperties => (is => 'ro', isa => 'ArrayRef[Paws::Shield::AttackProperty]');
  has EndTime => (is => 'ro', isa => 'Str');
  has Mitigations => (is => 'ro', isa => 'ArrayRef[Paws::Shield::Mitigation]');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has SubResources => (is => 'ro', isa => 'ArrayRef[Paws::Shield::SubResourceSummary]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::AttackDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Shield::AttackDetail object:

  $service_obj->Method(Att1 => { AttackCounters => $value, ..., SubResources => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Shield::AttackDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->AttackCounters

=head1 DESCRIPTION

The details of a DDoS attack.

=head1 ATTRIBUTES


=head2 AttackCounters => ArrayRef[L<Paws::Shield::SummarizedCounter>]

  List of counters that describe the attack for the specified time
period.


=head2 AttackId => Str

  The unique identifier (ID) of the attack.


=head2 AttackProperties => ArrayRef[L<Paws::Shield::AttackProperty>]

  The array of AttackProperty objects.


=head2 EndTime => Str

  The time the attack ended, in Unix time in seconds. For more
information see timestamp
(http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types).


=head2 Mitigations => ArrayRef[L<Paws::Shield::Mitigation>]

  List of mitigation actions taken for the attack.


=head2 ResourceArn => Str

  The ARN (Amazon Resource Name) of the resource that was attacked.


=head2 StartTime => Str

  The time the attack started, in Unix time in seconds. For more
information see timestamp
(http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types).


=head2 SubResources => ArrayRef[L<Paws::Shield::SubResourceSummary>]

  If applicable, additional detail about the resource being attacked, for
example, IP address or URL.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

