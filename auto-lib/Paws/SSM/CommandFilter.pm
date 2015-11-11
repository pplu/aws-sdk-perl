package Paws::SSM::CommandFilter;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', xmlname => 'key', request_name => 'key', traits => ['Unwrapped','NameInRequest'], required => 1);
  has Value => (is => 'ro', isa => 'Str', xmlname => 'value', request_name => 'value', traits => ['Unwrapped','NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CommandFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::CommandFilter object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::CommandFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Describes a command filter.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The name of the filter. For example, requested date and time.


=head2 B<REQUIRED> Value => Str

  The filter value. For example: June 30, 2015.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

