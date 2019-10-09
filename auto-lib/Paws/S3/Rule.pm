package Paws::S3::Rule;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_AbortIncompleteMultipartUpload S3_Transition S3_LifecycleExpiration S3_NoncurrentVersionTransition S3_NoncurrentVersionExpiration/;
  has AbortIncompleteMultipartUpload => (is => 'ro', isa => S3_AbortIncompleteMultipartUpload);
  has Expiration => (is => 'ro', isa => S3_LifecycleExpiration);
  has ID => (is => 'ro', isa => Str);
  has NoncurrentVersionExpiration => (is => 'ro', isa => S3_NoncurrentVersionExpiration);
  has NoncurrentVersionTransition => (is => 'ro', isa => S3_NoncurrentVersionTransition);
  has Prefix => (is => 'ro', isa => Str, required => 1);
  has Status => (is => 'ro', isa => Str, required => 1);
  has Transition => (is => 'ro', isa => S3_Transition);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ID' => {
                         'type' => 'Str'
                       },
               'Expiration' => {
                                 'class' => 'Paws::S3::LifecycleExpiration',
                                 'type' => 'S3_LifecycleExpiration'
                               },
               'AbortIncompleteMultipartUpload' => {
                                                     'class' => 'Paws::S3::AbortIncompleteMultipartUpload',
                                                     'type' => 'S3_AbortIncompleteMultipartUpload'
                                                   },
               'Status' => {
                             'type' => 'Str'
                           },
               'NoncurrentVersionTransition' => {
                                                  'class' => 'Paws::S3::NoncurrentVersionTransition',
                                                  'type' => 'S3_NoncurrentVersionTransition'
                                                },
               'NoncurrentVersionExpiration' => {
                                                  'class' => 'Paws::S3::NoncurrentVersionExpiration',
                                                  'type' => 'S3_NoncurrentVersionExpiration'
                                                },
               'Prefix' => {
                             'type' => 'Str'
                           },
               'Transition' => {
                                 'class' => 'Paws::S3::Transition',
                                 'type' => 'S3_Transition'
                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::Rule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::Rule object:

  $service_obj->Method(Att1 => { AbortIncompleteMultipartUpload => $value, ..., Transition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::Rule object:

  $result = $service_obj->Method(...);
  $result->Att1->AbortIncompleteMultipartUpload

=head1 DESCRIPTION

Specifies lifecycle rules for an Amazon S3 bucket. For more
information, see PUT Bucket lifecycle
(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlifecycle.html)
in the I<Amazon Simple Storage Service API Reference>.

=head1 ATTRIBUTES


=head2 AbortIncompleteMultipartUpload => S3_AbortIncompleteMultipartUpload

  


=head2 Expiration => S3_LifecycleExpiration

  


=head2 ID => Str

  Unique identifier for the rule. The value can't be longer than 255
characters.


=head2 NoncurrentVersionExpiration => S3_NoncurrentVersionExpiration

  


=head2 NoncurrentVersionTransition => S3_NoncurrentVersionTransition

  


=head2 B<REQUIRED> Prefix => Str

  Object key prefix that identifies one or more objects to which this
rule applies.


=head2 B<REQUIRED> Status => Str

  If C<Enabled>, the rule is currently being applied. If C<Disabled>, the
rule is not currently being applied.


=head2 Transition => S3_Transition

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

