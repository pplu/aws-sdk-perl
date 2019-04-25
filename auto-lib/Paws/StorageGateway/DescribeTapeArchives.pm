
package Paws::StorageGateway::DescribeTapeArchives;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');
  has TapeARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTapeArchives');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::DescribeTapeArchivesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeTapeArchives - Arguments for method DescribeTapeArchives on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTapeArchives on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method DescribeTapeArchives.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTapeArchives.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To describe virtual tapes in the VTS
    # Returns a description of specified virtual tapes in the virtual tape shelf
    # (VTS).
    my $DescribeTapeArchivesOutput = $storagegateway->DescribeTapeArchives(
      {
        'Limit'    => 123,
        'Marker'   => 1,
        'TapeARNs' => [
          'arn:aws:storagegateway:us-east-1:999999999999:tape/AM08A1AD',
          'arn:aws:storagegateway:us-east-1:999999999999:tape/AMZN01A2A4'
        ]
      }
    );

    # Results:
    my $Marker       = $DescribeTapeArchivesOutput->Marker;
    my $TapeArchives = $DescribeTapeArchivesOutput->TapeArchives;

    # Returns a L<Paws::StorageGateway::DescribeTapeArchivesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/DescribeTapeArchives>

=head1 ATTRIBUTES


=head2 Limit => Int

Specifies that the number of virtual tapes descried be limited to the
specified number.



=head2 Marker => Str

An opaque string that indicates the position at which to begin
describing virtual tapes.



=head2 TapeARNs => ArrayRef[Str|Undef]

Specifies one or more unique Amazon Resource Names (ARNs) that
represent the virtual tapes you want to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTapeArchives in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

