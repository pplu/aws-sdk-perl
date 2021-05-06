
package Paws::Snowball::GetSoftwareUpdates;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSoftwareUpdates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Snowball::GetSoftwareUpdatesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::GetSoftwareUpdates - Arguments for method GetSoftwareUpdates on L<Paws::Snowball>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSoftwareUpdates on the
L<Amazon ImportE<sol>Export Snowball|Paws::Snowball> service. Use the attributes of this class
as arguments to method GetSoftwareUpdates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSoftwareUpdates.

=head1 SYNOPSIS

    my $snowball = Paws->service('Snowball');
    my $GetSoftwareUpdatesResult = $snowball->GetSoftwareUpdates(
      JobId => 'MyJobId',

    );

    # Results:
    my $UpdatesURI = $GetSoftwareUpdatesResult->UpdatesURI;

    # Returns a L<Paws::Snowball::GetSoftwareUpdatesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snowball/GetSoftwareUpdates>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The ID for a job that you want to get the software update file for, for
example C<JID123e4567-e89b-12d3-a456-426655440000>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSoftwareUpdates in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

