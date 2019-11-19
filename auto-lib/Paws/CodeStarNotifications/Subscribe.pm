
package Paws::CodeStarNotifications::Subscribe;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeStarNotifications::Types qw/CodeStarNotifications_Target/;
  has Arn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ClientRequestToken => (is => 'ro', isa => Str, predicate => 1);
  has Target => (is => 'ro', isa => CodeStarNotifications_Target, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'Subscribe');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/subscribe');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeStarNotifications::SubscribeResult');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Target' => 1,
                    'Arn' => 1
                  },
  'types' => {
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Target' => {
                             'type' => 'CodeStarNotifications_Target',
                             'class' => 'Paws::CodeStarNotifications::Target'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::Subscribe - Arguments for method Subscribe on L<Paws::CodeStarNotifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Subscribe on the
L<AWS CodeStar Notifications|Paws::CodeStarNotifications> service. Use the attributes of this class
as arguments to method Subscribe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Subscribe.

=head1 SYNOPSIS

    my $codestar-notifications = Paws->service('CodeStarNotifications');
    my $SubscribeResult = $codestar -notifications->Subscribe(
      Arn    => 'MyNotificationRuleArn',
      Target => {
        TargetAddress => 'MyTargetAddress',    # min: 1, max: 320; OPTIONAL
        TargetType    => 'MyTargetType',       # OPTIONAL
      },
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
    );

    # Results:
    my $Arn = $SubscribeResult->Arn;

    # Returns a L<Paws::CodeStarNotifications::SubscribeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar-notifications/Subscribe>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the notification rule for which you
want to create the association.



=head2 ClientRequestToken => Str

An enumeration token that, when provided in a request, returns the next
batch of the results.



=head2 B<REQUIRED> Target => CodeStarNotifications_Target






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Subscribe in L<Paws::CodeStarNotifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

