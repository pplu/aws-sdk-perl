
package Paws::KinesisAnalyticsV2::CreateApplicationSnapshot;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplicationSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalyticsV2::CreateApplicationSnapshotResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::CreateApplicationSnapshot - Arguments for method CreateApplicationSnapshot on L<Paws::KinesisAnalyticsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplicationSnapshot on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalyticsV2> service. Use the attributes of this class
as arguments to method CreateApplicationSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplicationSnapshot.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalyticsV2');
    my $CreateApplicationSnapshotResponse =
      $kinesisanalytics->CreateApplicationSnapshot(
      ApplicationName => 'MyApplicationName',
      SnapshotName    => 'MySnapshotName',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/CreateApplicationSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of an existing application



=head2 B<REQUIRED> SnapshotName => Str

An identifier for the application snapshot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplicationSnapshot in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

