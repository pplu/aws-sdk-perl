
package Paws::CodePipeline::DeleteWebhook;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteWebhook');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::DeleteWebhookOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::DeleteWebhook - Arguments for method DeleteWebhook on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteWebhook on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method DeleteWebhook.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteWebhook.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $DeleteWebhookOutput = $codepipeline->DeleteWebhook(
      Name => 'MyWebhookName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/DeleteWebhook>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the webhook you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteWebhook in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

