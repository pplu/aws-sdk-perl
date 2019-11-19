# Generated from default/object.tt
package Paws::MediaConvert::S3DestinationAccessControl;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConvert::Types qw//;
  has CannedAcl => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'CannedAcl' => 'cannedAcl'
                     },
  'types' => {
               'CannedAcl' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::S3DestinationAccessControl

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::S3DestinationAccessControl object:

  $service_obj->Method(Att1 => { CannedAcl => $value, ..., CannedAcl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::S3DestinationAccessControl object:

  $result = $service_obj->Method(...);
  $result->Att1->CannedAcl

=head1 DESCRIPTION

Optional. Have MediaConvert automatically apply Amazon S3 access
control for the outputs in this output group. When you don't use this
setting, S3 automatically applies the default access control list
PRIVATE.

=head1 ATTRIBUTES


=head2 CannedAcl => Str

  Choose an Amazon S3 canned ACL for MediaConvert to apply to this
output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

