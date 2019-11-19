
package Paws::WorkMailMessageFlow::GetRawMessageContent;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkMailMessageFlow::Types qw//;
  has MessageId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetRawMessageContent');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/messages/{messageId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkMailMessageFlow::GetRawMessageContentResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'MessageId' => 1
                  },
  'types' => {
               'MessageId' => {
                                'type' => 'Str'
                              }
             },
  'ParamInURI' => {
                    'MessageId' => 'messageId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMailMessageFlow::GetRawMessageContent - Arguments for method GetRawMessageContent on L<Paws::WorkMailMessageFlow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRawMessageContent on the
L<Amazon WorkMail Message Flow|Paws::WorkMailMessageFlow> service. Use the attributes of this class
as arguments to method GetRawMessageContent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRawMessageContent.

=head1 SYNOPSIS

    my $workmailmessageflow = Paws->service('WorkMailMessageFlow');
    my $GetRawMessageContentResponse =
      $workmailmessageflow->GetRawMessageContent(
      MessageId => 'MymessageIdType',

      );

    # Results:
    my $MessageContent = $GetRawMessageContentResponse->MessageContent;

  # Returns a L<Paws::WorkMailMessageFlow::GetRawMessageContentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmailmessageflow/GetRawMessageContent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MessageId => Str

The identifier of the email message to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRawMessageContent in L<Paws::WorkMailMessageFlow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

