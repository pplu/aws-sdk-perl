# Generated from default/object.tt
package Paws::S3Control::S3ObjectMetadata;
  use Moo;
  use Types::Standard qw/Str Int Bool/;
  use Paws::S3Control::Types qw/S3Control_S3UserMetadata/;
  has CacheControl => (is => 'ro', isa => Str);
  has ContentDisposition => (is => 'ro', isa => Str);
  has ContentEncoding => (is => 'ro', isa => Str);
  has ContentLanguage => (is => 'ro', isa => Str);
  has ContentLength => (is => 'ro', isa => Int);
  has ContentMD5 => (is => 'ro', isa => Str);
  has ContentType => (is => 'ro', isa => Str);
  has HttpExpiresDate => (is => 'ro', isa => Str);
  has RequesterCharged => (is => 'ro', isa => Bool);
  has SSEAlgorithm => (is => 'ro', isa => Str);
  has UserMetadata => (is => 'ro', isa => S3Control_S3UserMetadata);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ContentLength' => {
                                    'type' => 'Int'
                                  },
               'ContentType' => {
                                  'type' => 'Str'
                                },
               'UserMetadata' => {
                                   'class' => 'Paws::S3Control::S3UserMetadata',
                                   'type' => 'S3Control_S3UserMetadata'
                                 },
               'ContentMD5' => {
                                 'type' => 'Str'
                               },
               'HttpExpiresDate' => {
                                      'type' => 'Str'
                                    },
               'CacheControl' => {
                                   'type' => 'Str'
                                 },
               'SSEAlgorithm' => {
                                   'type' => 'Str'
                                 },
               'RequesterCharged' => {
                                       'type' => 'Bool'
                                     },
               'ContentLanguage' => {
                                      'type' => 'Str'
                                    },
               'ContentEncoding' => {
                                      'type' => 'Str'
                                    },
               'ContentDisposition' => {
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

Paws::S3Control::S3ObjectMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::S3ObjectMetadata object:

  $service_obj->Method(Att1 => { CacheControl => $value, ..., UserMetadata => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::S3ObjectMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->CacheControl

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CacheControl => Str

  


=head2 ContentDisposition => Str

  


=head2 ContentEncoding => Str

  


=head2 ContentLanguage => Str

  


=head2 ContentLength => Int

  


=head2 ContentMD5 => Str

  


=head2 ContentType => Str

  


=head2 HttpExpiresDate => Str

  


=head2 RequesterCharged => Bool

  


=head2 SSEAlgorithm => Str

  


=head2 UserMetadata => S3Control_S3UserMetadata

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

