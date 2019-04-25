
package Paws::SMS::GenerateChangeSet;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId' );
  has ChangesetFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'changesetFormat' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateChangeSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SMS::GenerateChangeSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::GenerateChangeSet - Arguments for method GenerateChangeSet on L<Paws::SMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateChangeSet on the
L<AWS Server Migration Service|Paws::SMS> service. Use the attributes of this class
as arguments to method GenerateChangeSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateChangeSet.

=head1 SYNOPSIS

    my $sms = Paws->service('SMS');
    my $GenerateChangeSetResponse = $sms->GenerateChangeSet(
      AppId           => 'MyAppId',    # OPTIONAL
      ChangesetFormat => 'JSON',       # OPTIONAL
    );

    # Results:
    my $S3Location = $GenerateChangeSetResponse->S3Location;

    # Returns a L<Paws::SMS::GenerateChangeSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms/GenerateChangeSet>

=head1 ATTRIBUTES


=head2 AppId => Str

ID of the application associated with the change set.



=head2 ChangesetFormat => Str

Format for the change set.

Valid values are: C<"JSON">, C<"YAML">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateChangeSet in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

