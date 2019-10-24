# Generated from default/object.tt
package Paws::S3::LifecycleRule;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::S3::Types qw/S3_AbortIncompleteMultipartUpload S3_Transition S3_LifecycleExpiration S3_NoncurrentVersionTransition S3_LifecycleRuleFilter S3_NoncurrentVersionExpiration/;
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
               'NoncurrentVersionExpiration' => {
                                                  'class' => 'Paws::S3::NoncurrentVersionExpiration',
                                                  'type' => 'S3_NoncurrentVersionExpiration'
                                                },
               'Filter' => {
                             'class' => 'Paws::S3::LifecycleRuleFilter',
                             'type' => 'S3_LifecycleRuleFilter'
                           },
               'Prefix' => {
                             'type' => 'Str'
                           },
               'Transitions' => {
                                  'class' => 'Paws::S3::Transition',
                                  'type' => 'ArrayRef[S3_Transition]'
                                },
               'NoncurrentVersionTransitions' => {
                                                   'class' => 'Paws::S3::NoncurrentVersionTransition',
                                                   'type' => 'ArrayRef[S3_NoncurrentVersionTransition]'
                                                 }
             },
  'NameInRequest' => {
                       'Transitions' => 'Transition',
                       'NoncurrentVersionTransitions' => 'NoncurrentVersionTransition'
                     },
  'IsRequired' => {
                    'Status' => 1
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

This class has no description

=head1 ATTRIBUTES


=head2 AbortIncompleteMultipartUpload => S3_AbortIncompleteMultipartUpload

  


=head2 Expiration => S3_LifecycleExpiration

  


=head2 Filter => S3_LifecycleRuleFilter

  


=head2 ID => Str

  Unique identifier for the rule. The value cannot be longer than 255
characters.


=head2 NoncurrentVersionExpiration => S3_NoncurrentVersionExpiration

  


=head2 NoncurrentVersionTransitions => ArrayRef[S3_NoncurrentVersionTransition]

  


=head2 Prefix => Str

  Prefix identifying one or more objects to which the rule applies. This
is No longer used; use Filter instead.


=head2 B<REQUIRED> Status => Str

  If 'Enabled', the rule is currently being applied. If 'Disabled', the
rule is not currently being applied.


=head2 Transitions => ArrayRef[S3_Transition]

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

