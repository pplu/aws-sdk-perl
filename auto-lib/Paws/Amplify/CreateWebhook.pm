
package Paws::Amplify::CreateWebhook;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has BranchName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'branchName', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWebhook');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps/{appId}/webhooks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Amplify::CreateWebhookResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::CreateWebhook - Arguments for method CreateWebhook on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWebhook on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method CreateWebhook.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWebhook.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $CreateWebhookResult = $amplify->CreateWebhook(
      AppId       => 'MyAppId',
      BranchName  => 'MyBranchName',
      Description => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $Webhook = $CreateWebhookResult->Webhook;

    # Returns a L<Paws::Amplify::CreateWebhookResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/CreateWebhook>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

Unique Id for an Amplify App.



=head2 B<REQUIRED> BranchName => Str

Name for a branch, part of an Amplify App.



=head2 Description => Str

Description for a webhook.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWebhook in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

