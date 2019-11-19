# Generated from default/object.tt
package Paws::S3::CORSConfiguration;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::S3::Types qw/S3_CORSRule/;
  has CORSRules => (is => 'ro', isa => ArrayRef[S3_CORSRule], required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'CORSRules' => 'CORSRule'
                     },
  'IsRequired' => {
                    'CORSRules' => 1
                  },
  'types' => {
               'CORSRules' => {
                                'class' => 'Paws::S3::CORSRule',
                                'type' => 'ArrayRef[S3_CORSRule]'
                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CORSConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::CORSConfiguration object:

  $service_obj->Method(Att1 => { CORSRules => $value, ..., CORSRules => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::CORSConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CORSRules

=head1 DESCRIPTION

Describes the cross-origin access configuration for objects in an
Amazon S3 bucket. For more information, see Enabling Cross-Origin
Resource Sharing
(https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html) in the
I<Amazon Simple Storage Service Developer Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CORSRules => ArrayRef[S3_CORSRule]

  A set of origins and methods (cross-origin access that you want to
allow). You can add up to 100 rules to the configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

