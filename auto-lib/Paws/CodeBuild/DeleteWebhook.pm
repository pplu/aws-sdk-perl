
package Paws::CodeBuild::DeleteWebhook;
  use Moose;
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteWebhook');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::DeleteWebhookOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::DeleteWebhook - Arguments for method DeleteWebhook on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteWebhook on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method DeleteWebhook.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteWebhook.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $DeleteWebhookOutput = $codebuild->DeleteWebhook(
      ProjectName => 'MyProjectName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/DeleteWebhook>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProjectName => Str

The name of the CodeBuild project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteWebhook in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

