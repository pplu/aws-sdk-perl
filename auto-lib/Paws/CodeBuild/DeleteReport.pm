
package Paws::CodeBuild::DeleteReport;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteReport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::DeleteReportOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::DeleteReport - Arguments for method DeleteReport on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteReport on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method DeleteReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteReport.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $DeleteReportOutput = $codebuild->DeleteReport(
      Arn => 'MyNonEmptyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/DeleteReport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the report to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteReport in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

