package Paws::Quicksight::TwitterParameters;
  use Moose;
  has MaxRows => (is => 'ro', isa => 'Int', required => 1);
  has Query => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::TwitterParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::TwitterParameters object:

  $service_obj->Method(Att1 => { MaxRows => $value, ..., Query => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::TwitterParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxRows

=head1 DESCRIPTION

Twitter parameters.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MaxRows => Int

  Maximum number of rows to query Twitter.


=head2 B<REQUIRED> Query => Str

  Twitter query string.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

