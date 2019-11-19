# Generated from default/object.tt
package Paws::IoT::SigV4Authorization;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has RoleArn => (is => 'ro', isa => Str, required => 1);
  has ServiceName => (is => 'ro', isa => Str, required => 1);
  has SigningRegion => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'SigningRegion' => {
                                    'type' => 'Str'
                                  },
               'ServiceName' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'SigningRegion' => 'signingRegion',
                       'ServiceName' => 'serviceName',
                       'RoleArn' => 'roleArn'
                     },
  'IsRequired' => {
                    'RoleArn' => 1,
                    'ServiceName' => 1,
                    'SigningRegion' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::SigV4Authorization

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::SigV4Authorization object:

  $service_obj->Method(Att1 => { RoleArn => $value, ..., SigningRegion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::SigV4Authorization object:

  $result = $service_obj->Method(...);
  $result->Att1->RoleArn

=head1 DESCRIPTION

Use Sig V4 authorization.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RoleArn => Str

  The ARN of the signing role.


=head2 B<REQUIRED> ServiceName => Str

  The service name to use while signing with Sig V4.


=head2 B<REQUIRED> SigningRegion => Str

  The signing region.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

