
package Paws::CloudFormation::RegisterPublisher;
  use Moose;
  has AcceptTermsAndConditions => (is => 'ro', isa => 'Bool');
  has ConnectionArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterPublisher');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::RegisterPublisherOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterPublisherResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::RegisterPublisher - Arguments for method RegisterPublisher on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterPublisher on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method RegisterPublisher.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterPublisher.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $RegisterPublisherOutput = $cloudformation->RegisterPublisher(
      AcceptTermsAndConditions => 1,                    # OPTIONAL
      ConnectionArn            => 'MyConnectionArn',    # OPTIONAL
    );

    # Results:
    my $PublisherId = $RegisterPublisherOutput->PublisherId;

    # Returns a L<Paws::CloudFormation::RegisterPublisherOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/RegisterPublisher>

=head1 ATTRIBUTES


=head2 AcceptTermsAndConditions => Bool

Whether you accept the terms and conditions for publishing extensions
in the CloudFormation registry. You must accept the terms and
conditions in order to register to publish public extensions to the
CloudFormation registry.

The default is C<false>.



=head2 ConnectionArn => Str

If you are using a Bitbucket or GitHub account for identity
verification, the Amazon Resource Name (ARN) for your connection to
that account.

For more information, see Registering your account to publish
CloudFormation extensions
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-prereqs)
in the I<CloudFormation CLI User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterPublisher in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

