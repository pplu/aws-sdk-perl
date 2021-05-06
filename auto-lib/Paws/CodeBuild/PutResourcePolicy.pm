
package Paws::CodeBuild::PutResourcePolicy;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy' , required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourcePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::PutResourcePolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::PutResourcePolicy - Arguments for method PutResourcePolicy on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourcePolicy on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method PutResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourcePolicy.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $PutResourcePolicyOutput = $codebuild->PutResourcePolicy(
      Policy      => 'MyNonEmptyString',
      ResourceArn => 'MyNonEmptyString',

    );

    # Results:
    my $ResourceArn = $PutResourcePolicyOutput->ResourceArn;

    # Returns a L<Paws::CodeBuild::PutResourcePolicyOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/PutResourcePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => Str

A JSON-formatted resource policy. For more information, see Sharing a
Project
(https://docs.aws.amazon.com/codebuild/latest/userguide/project-sharing.html#project-sharing-share)
and Sharing a Report Group
(https://docs.aws.amazon.com/codebuild/latest/userguide/report-groups-sharing.html#report-groups-sharing-share)
in the I<AWS CodeBuild User Guide>.



=head2 B<REQUIRED> ResourceArn => Str

The ARN of the C<Project> or C<ReportGroup> resource you want to
associate with a resource policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourcePolicy in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

