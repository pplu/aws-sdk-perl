# Generated from default/object.tt
package Paws::S3Control::PublicAccessBlockConfiguration;
  use Moo;
  use Types::Standard qw/Bool/;
  use Paws::S3Control::Types qw//;
  has BlockPublicAcls => (is => 'ro', isa => Bool);
  has BlockPublicPolicy => (is => 'ro', isa => Bool);
  has IgnorePublicAcls => (is => 'ro', isa => Bool);
  has RestrictPublicBuckets => (is => 'ro', isa => Bool);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'BlockPublicPolicy' => 'BlockPublicPolicy',
                       'RestrictPublicBuckets' => 'RestrictPublicBuckets',
                       'BlockPublicAcls' => 'BlockPublicAcls',
                       'IgnorePublicAcls' => 'IgnorePublicAcls'
                     },
  'types' => {
               'BlockPublicPolicy' => {
                                        'type' => 'Bool'
                                      },
               'RestrictPublicBuckets' => {
                                            'type' => 'Bool'
                                          },
               'BlockPublicAcls' => {
                                      'type' => 'Bool'
                                    },
               'IgnorePublicAcls' => {
                                       'type' => 'Bool'
                                     }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::PublicAccessBlockConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::PublicAccessBlockConfiguration object:

  $service_obj->Method(Att1 => { BlockPublicAcls => $value, ..., RestrictPublicBuckets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::PublicAccessBlockConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->BlockPublicAcls

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BlockPublicAcls => Bool

  


=head2 BlockPublicPolicy => Bool

  


=head2 IgnorePublicAcls => Bool

  


=head2 RestrictPublicBuckets => Bool

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

