# Generated from default/object.tt
package Paws::S3::LifecycleRule;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::S3::Types qw/S3_Transition S3_LifecycleRuleFilter S3_NoncurrentVersionExpiration S3_AbortIncompleteMultipartUpload S3_NoncurrentVersionTransition S3_LifecycleExpiration/;
  has AbortIncompleteMultipartUpload => (is => 'ro', isa => S3_AbortIncompleteMultipartUpload);
  has Expiration => (is => 'ro', isa => S3_LifecycleExpiration);
  has Filter => (is => 'ro', isa => S3_LifecycleRuleFilter);
  has ID => (is => 'ro', isa => Str);
  has NoncurrentVersionExpiration => (is => 'ro', isa => S3_NoncurrentVersionExpiration);
  has NoncurrentVersionTransitions => (is => 'ro', isa => ArrayRef[S3_NoncurrentVersionTransition]);
  has Prefix => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str, required => 1);
  has Transitions => (is => 'ro', isa => ArrayRef[S3_Transition]);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Status' => 1
                  },
  'NameInRequest' => {
                       'NoncurrentVersionTransitions' => 'NoncurrentVersionTransition',
                       'Transitions' => 'Transition'
                     },
  'types' => {
               'Transitions' => {
                                  'class' => 'Paws::S3::Transition',
                                  'type' => 'ArrayRef[S3_Transition]'
                                },
               'AbortIncompleteMultipartUpload' => {
                                                     'type' => 'S3_AbortIncompleteMultipartUpload',
                                                     'class' => 'Paws::S3::AbortIncompleteMultipartUpload'
                                                   },
               'NoncurrentVersionTransitions' => {
                                                   'type' => 'ArrayRef[S3_NoncurrentVersionTransition]',
                                                   'class' => 'Paws::S3::NoncurrentVersionTransition'
                                                 },
               'NoncurrentVersionExpiration' => {
                                                  'type' => 'S3_NoncurrentVersionExpiration',
                                                  'class' => 'Paws::S3::NoncurrentVersionExpiration'
                                                },
               'ID' => {
                         'type' => 'Str'
                       },
               'Expiration' => {
                                 'type' => 'S3_LifecycleExpiration',
                                 'class' => 'Paws::S3::LifecycleExpiration'
                               },
               'Prefix' => {
                             'type' => 'Str'
                           },
               'Filter' => {
                             'class' => 'Paws::S3::LifecycleRuleFilter',
                             'type' => 'S3_LifecycleRuleFilter'
                           },
               'Status' => {
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

Paws::S3::LifecycleRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::LifecycleRule object:

  $service_obj->Method(Att1 => { AbortIncompleteMultipartUpload => $value, ..., Transitions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::LifecycleRule object:

  $result = $service_obj->Method(...);
  $result->Att1->AbortIncompleteMultipartUpload

=head1 DESCRIPTION

A lifecycle rule for individual objects in an Amazon S3 bucket.

=head1 ATTRIBUTES


=head2 AbortIncompleteMultipartUpload => S3_AbortIncompleteMultipartUpload

  


=head2 Expiration => S3_LifecycleExpiration

  Specifies the expiration for the lifecycle of the object in the form of
date, days and, whether the object has a delete marker.


=head2 Filter => S3_LifecycleRuleFilter

  


=head2 ID => Str

  Unique identifier for the rule. The value cannot be longer than 255
characters.


=head2 NoncurrentVersionExpiration => S3_NoncurrentVersionExpiration

  


=head2 NoncurrentVersionTransitions => ArrayRef[S3_NoncurrentVersionTransition]

  Specifies the transition rule for the lifecycle rule that describes
when noncurrent objects transition to the a specific storage class. If
your bucket is versioning-enabled (or versioning is suspended), you can
set this action to request that Amazon S3 transition noncurrent object
versions to the a specifc storage class at a set period in the object's
lifetime.


=head2 Prefix => Str

  Prefix identifying one or more objects to which the rule applies. This
is No longer used; use Filter instead.


=head2 B<REQUIRED> Status => Str

  If 'Enabled', the rule is currently being applied. If 'Disabled', the
rule is not currently being applied.


=head2 Transitions => ArrayRef[S3_Transition]

  Specifies when an Amazon S3 object transitions to a specified storage
class.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

