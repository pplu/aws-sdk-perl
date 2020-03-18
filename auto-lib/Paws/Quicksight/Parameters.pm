package Paws::Quicksight::Parameters;
  use Moose;
  has DateTimeParameters => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::DateTimeParameter]');
  has DecimalParameters => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::DecimalParameter]');
  has IntegerParameters => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::IntegerParameter]');
  has StringParameters => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::StringParameter]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::Parameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::Parameters object:

  $service_obj->Method(Att1 => { DateTimeParameters => $value, ..., StringParameters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::Parameters object:

  $result = $service_obj->Method(...);
  $result->Att1->DateTimeParameters

=head1 DESCRIPTION

Parameters.

=head1 ATTRIBUTES


=head2 DateTimeParameters => ArrayRef[L<Paws::Quicksight::DateTimeParameter>]

  DateTime parameters.


=head2 DecimalParameters => ArrayRef[L<Paws::Quicksight::DecimalParameter>]

  Decimal parameters.


=head2 IntegerParameters => ArrayRef[L<Paws::Quicksight::IntegerParameter>]

  Integer parameters.


=head2 StringParameters => ArrayRef[L<Paws::Quicksight::StringParameter>]

  String parameters.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

