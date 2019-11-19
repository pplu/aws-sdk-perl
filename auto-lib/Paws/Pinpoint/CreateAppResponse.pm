# Generated from default/object.tt
package Paws::Pinpoint::CreateAppResponse;
  use Moo;
  use Types::Standard qw//;
  use Paws::Pinpoint::Types qw/Pinpoint_ApplicationResponse/;
  has ApplicationResponse => (is => 'ro', isa => Pinpoint_ApplicationResponse, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ApplicationResponse' => 1
                  },
  'types' => {
               'ApplicationResponse' => {
                                          'class' => 'Paws::Pinpoint::ApplicationResponse',
                                          'type' => 'Pinpoint_ApplicationResponse'
                                        }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CreateAppResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::CreateAppResponse object:

  $service_obj->Method(Att1 => { ApplicationResponse => $value, ..., ApplicationResponse => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::CreateAppResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationResponse

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationResponse => Pinpoint_ApplicationResponse

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

