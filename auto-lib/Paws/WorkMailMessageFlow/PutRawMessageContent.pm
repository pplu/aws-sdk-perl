
package Paws::WorkMailMessageFlow::PutRawMessageContent;
  use Moose;
  has Content => (is => 'ro', isa => 'Paws::WorkMailMessageFlow::RawMessageContent', traits => ['NameInRequest'], request_name => 'content', required => 1);
  has MessageId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'messageId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRawMessageContent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/messages/{messageId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMailMessageFlow::PutRawMessageContentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMailMessageFlow::PutRawMessageContent - Arguments for method PutRawMessageContent on L<Paws::WorkMailMessageFlow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRawMessageContent on the
L<Amazon WorkMail Message Flow|Paws::WorkMailMessageFlow> service. Use the attributes of this class
as arguments to method PutRawMessageContent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRawMessageContent.

=head1 SYNOPSIS

    my $workmailmessageflow = Paws->service('WorkMailMessageFlow');
    my $PutRawMessageContentResponse =
      $workmailmessageflow->PutRawMessageContent(
      Content => {
        S3Reference => {
          Bucket        => 'Mys3BucketIdType',    # min: 3, max: 63
          Key           => 'Mys3KeyIdType',       # min: 1, max: 1024
          ObjectVersion => 'Mys3VersionType',     # min: 1, max: 1024; OPTIONAL
        },

      },
      MessageId => 'MymessageIdType',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmailmessageflow/PutRawMessageContent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => L<Paws::WorkMailMessageFlow::RawMessageContent>

Describes the raw message content of the updated email message.



=head2 B<REQUIRED> MessageId => Str

The identifier of the email message being updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRawMessageContent in L<Paws::WorkMailMessageFlow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

