
package Paws::ApplicationMigration::StartCutover;
  use Moose;
  has SourceServerIDs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'sourceServerIDs', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ApplicationMigration::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartCutover');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/StartCutover');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::StartCutoverResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::StartCutover - Arguments for method StartCutover on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartCutover on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method StartCutover.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartCutover.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $StartCutoverResponse = $mgn->StartCutover(
      SourceServerIDs => [
        'MySourceServerID', ...    # min: 19, max: 19
      ],
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: max: 256, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Job = $StartCutoverResponse->Job;

    # Returns a L<Paws::ApplicationMigration::StartCutoverResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/StartCutover>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceServerIDs => ArrayRef[Str|Undef]

Start Cutover by Source Server IDs.



=head2 Tags => L<Paws::ApplicationMigration::TagsMap>

Start Cutover by Tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartCutover in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

