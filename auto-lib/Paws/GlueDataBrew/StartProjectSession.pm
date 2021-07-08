
package Paws::GlueDataBrew::StartProjectSession;
  use Moose;
  has AssumeControl => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartProjectSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{name}/startProjectSession');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::StartProjectSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::StartProjectSession - Arguments for method StartProjectSession on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartProjectSession on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method StartProjectSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartProjectSession.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $StartProjectSessionResponse = $databrew->StartProjectSession(
      Name          => 'MyProjectName',
      AssumeControl => 1,                 # OPTIONAL
    );

    # Results:
    my $ClientSessionId = $StartProjectSessionResponse->ClientSessionId;
    my $Name            = $StartProjectSessionResponse->Name;

    # Returns a L<Paws::GlueDataBrew::StartProjectSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/StartProjectSession>

=head1 ATTRIBUTES


=head2 AssumeControl => Bool

A value that, if true, enables you to take control of a session, even
if a different client is currently accessing the project.



=head2 B<REQUIRED> Name => Str

The name of the project to act upon.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartProjectSession in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

