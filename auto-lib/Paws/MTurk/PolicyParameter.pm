package Paws::MTurk::PolicyParameter;
  use Moose;
  has Key => (is => 'ro', isa => 'Str');
  has MapEntries => (is => 'ro', isa => 'ArrayRef[Paws::MTurk::ParameterMapEntry]');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::PolicyParameter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MTurk::PolicyParameter object:

  $service_obj->Method(Att1 => { Key => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MTurk::PolicyParameter object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Name of the parameter from the Review policy.

=head1 ATTRIBUTES


=head2 Key => Str

  Name of the parameter from the list of Review Polices.


=head2 MapEntries => ArrayRef[L<Paws::MTurk::ParameterMapEntry>]

  List of ParameterMapEntry objects.


=head2 Values => ArrayRef[Str|Undef]

  The list of values of the Parameter



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

