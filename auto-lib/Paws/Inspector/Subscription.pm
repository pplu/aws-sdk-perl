# Generated from default/object.tt
package Paws::Inspector::Subscription;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::Inspector::Types qw/Inspector_EventSubscription/;
  has EventSubscriptions => (is => 'ro', isa => ArrayRef[Inspector_EventSubscription], required => 1);
  has ResourceArn => (is => 'ro', isa => Str, required => 1);
  has TopicArn => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               'EventSubscriptions' => {
                                         'type' => 'ArrayRef[Inspector_EventSubscription]',
                                         'class' => 'Paws::Inspector::EventSubscription'
                                       },
               'TopicArn' => {
                               'type' => 'Str'
                             }
             },
  'IsRequired' => {
                    'EventSubscriptions' => 1,
                    'ResourceArn' => 1,
                    'TopicArn' => 1
                  },
  'NameInRequest' => {
                       'EventSubscriptions' => 'eventSubscriptions',
                       'ResourceArn' => 'resourceArn',
                       'TopicArn' => 'topicArn'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::Subscription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::Subscription object:

  $service_obj->Method(Att1 => { EventSubscriptions => $value, ..., TopicArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::Subscription object:

  $result = $service_obj->Method(...);
  $result->Att1->EventSubscriptions

=head1 DESCRIPTION

This data type is used as a response element in the
ListEventSubscriptions action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventSubscriptions => ArrayRef[Inspector_EventSubscription]

  The list of existing event subscriptions.


=head2 B<REQUIRED> ResourceArn => Str

  The ARN of the assessment template that is used during the event for
which the SNS notification is sent.


=head2 B<REQUIRED> TopicArn => Str

  The ARN of the Amazon Simple Notification Service (SNS) topic to which
the SNS notifications are sent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

