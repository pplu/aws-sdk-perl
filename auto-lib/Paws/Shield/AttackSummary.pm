package Paws::Shield::AttackSummary;
  use Moose;
  has AttackId => (is => 'ro', isa => 'Str');
  has AttackVectors => (is => 'ro', isa => 'ArrayRef[Paws::Shield::AttackVectorDescription]');
  has EndTime => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::AttackSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Shield::AttackSummary object:

  $service_obj->Method(Att1 => { AttackId => $value, ..., StartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Shield::AttackSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AttackId

=head1 DESCRIPTION

Summarizes all DDoS attacks for a specified time period.

=head1 ATTRIBUTES


=head2 AttackId => Str

  The unique identifier (ID) of the attack.


=head2 AttackVectors => ArrayRef[L<Paws::Shield::AttackVectorDescription>]

  The list of attacks for a specified time period.


=head2 EndTime => Str

  The end time of the attack, in Unix time in seconds. For more
information see timestamp
(http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types).


=head2 ResourceArn => Str

  The ARN (Amazon Resource Name) of the resource that was attacked.


=head2 StartTime => Str

  The start time of the attack, in Unix time in seconds. For more
information see timestamp
(http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

