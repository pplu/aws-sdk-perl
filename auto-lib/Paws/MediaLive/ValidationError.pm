package Paws::MediaLive::ValidationError;
  use Moose;
  has ElementPath => (is => 'ro', isa => 'Str', request_name => 'elementPath', traits => ['NameInRequest']);
  has ErrorMessage => (is => 'ro', isa => 'Str', request_name => 'errorMessage', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ValidationError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::ValidationError object:

  $service_obj->Method(Att1 => { ElementPath => $value, ..., ErrorMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::ValidationError object:

  $result = $service_obj->Method(...);
  $result->Att1->ElementPath

=head1 DESCRIPTION

Placeholder documentation for ValidationError

=head1 ATTRIBUTES


=head2 ElementPath => Str

  


=head2 ErrorMessage => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

