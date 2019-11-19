# Generated from callargs_class.tt

package Paws::RedShift::CreateEventSubscription;
  use Moo;
  use Types::Standard qw/Str Bool Undef ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_Tag/;
  has Enabled => (is => 'ro', isa => Bool, predicate => 1);
  has EventCategories => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has Severity => (is => 'ro', isa => Str, predicate => 1);
  has SnsTopicArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SourceIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has SourceType => (is => 'ro', isa => Str, predicate => 1);
  has SubscriptionName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[RedShift_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateEventSubscription');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RedShift::CreateEventSubscriptionResult');
  class_has _result_key => (isa => Str, is => 'ro', default => 'CreateEventSubscriptionResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SourceType' => {
                                 'type' => 'Str'
                               },
               'SubscriptionName' => {
                                       'type' => 'Str'
                                     },
               'Tags' => {
                           'type' => 'ArrayRef[RedShift_Tag]',
                           'class' => 'Paws::RedShift::Tag'
                         },
               'SourceIds' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               'EventCategories' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    },
               'Enabled' => {
                              'type' => 'Bool'
                            },
               'Severity' => {
                               'type' => 'Str'
                             },
               'SnsTopicArn' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'SnsTopicArn' => 1,
                    'SubscriptionName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateEventSubscription - Arguments for method CreateEventSubscription on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEventSubscription on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method CreateEventSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEventSubscription.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $CreateEventSubscriptionResult = $redshift->CreateEventSubscription(
      SnsTopicArn      => 'MyString',
      SubscriptionName => 'MyString',
      Enabled          => 1,                      # OPTIONAL
      EventCategories  => [ 'MyString', ... ],    # OPTIONAL
      Severity         => 'MyString',             # OPTIONAL
      SourceIds        => [ 'MyString', ... ],    # OPTIONAL
      SourceType       => 'MyString',             # OPTIONAL
      Tags             => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                          # OPTIONAL
    );

    # Results:
    my $EventSubscription = $CreateEventSubscriptionResult->EventSubscription;

    # Returns a L<Paws::RedShift::CreateEventSubscriptionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/CreateEventSubscription>

=head1 ATTRIBUTES


=head2 Enabled => Bool

A boolean value; set to C<true> to activate the subscription, and set
to C<false> to create the subscription but not activate it.



=head2 EventCategories => ArrayRef[Str|Undef]

Specifies the Amazon Redshift event categories to be published by the
event notification subscription.

Values: configuration, management, monitoring, security



=head2 Severity => Str

Specifies the Amazon Redshift event severity to be published by the
event notification subscription.

Values: ERROR, INFO



=head2 B<REQUIRED> SnsTopicArn => Str

The Amazon Resource Name (ARN) of the Amazon SNS topic used to transmit
the event notifications. The ARN is created by Amazon SNS when you
create a topic and subscribe to it.



=head2 SourceIds => ArrayRef[Str|Undef]

A list of one or more identifiers of Amazon Redshift source objects.
All of the objects must be of the same type as was specified in the
source type parameter. The event subscription will return only events
generated by the specified objects. If not specified, then events are
returned for all objects within the source type specified.

Example: my-cluster-1, my-cluster-2

Example: my-snapshot-20131010



=head2 SourceType => Str

The type of source that will be generating the events. For example, if
you want to be notified of events generated by a cluster, you would set
this parameter to cluster. If this value is not specified, events are
returned for all Amazon Redshift objects in your AWS account. You must
specify a source type in order to specify source IDs.

Valid values: cluster, cluster-parameter-group, cluster-security-group,
and cluster-snapshot.



=head2 B<REQUIRED> SubscriptionName => Str

The name of the event subscription to be created.

Constraints:

=over

=item *

Cannot be null, empty, or blank.

=item *

Must contain from 1 to 255 alphanumeric characters or hyphens.

=item *

First character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back




=head2 Tags => ArrayRef[RedShift_Tag]

A list of tag instances.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEventSubscription in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

