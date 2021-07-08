
package Paws::FMS::PutProtocolsList;
  use Moose;
  has ProtocolsList => (is => 'ro', isa => 'Paws::FMS::ProtocolsListData', required => 1);
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::FMS::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutProtocolsList');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FMS::PutProtocolsListResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::PutProtocolsList - Arguments for method PutProtocolsList on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutProtocolsList on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method PutProtocolsList.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutProtocolsList.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    my $PutProtocolsListResponse = $fms->PutProtocolsList(
      ProtocolsList => {
        ListName      => 'MyResourceName',    # min: 1, max: 128
        ProtocolsList => [
          'MyProtocol', ...                   # min: 1, max: 20
        ],
        CreateTime      => '1970-01-01T01:00:00',  # OPTIONAL
        LastUpdateTime  => '1970-01-01T01:00:00',  # OPTIONAL
        ListId          => 'MyListId',             # min: 36, max: 36; OPTIONAL
        ListUpdateToken => 'MyUpdateToken',        # min: 1, max: 1024; OPTIONAL
        PreviousProtocolsList => {
          'MyPreviousListVersion' => [
            'MyProtocol', ...                      # min: 1, max: 20
          ],    # key: min: 1, max: 2
        },    # OPTIONAL
      },
      TagList => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ProtocolsList    = $PutProtocolsListResponse->ProtocolsList;
    my $ProtocolsListArn = $PutProtocolsListResponse->ProtocolsListArn;

    # Returns a L<Paws::FMS::PutProtocolsListResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/PutProtocolsList>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProtocolsList => L<Paws::FMS::ProtocolsListData>

The details of the AWS Firewall Manager protocols list to be created.



=head2 TagList => ArrayRef[L<Paws::FMS::Tag>]

The tags associated with the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutProtocolsList in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

