
package Paws::GroundStation::DescribeContact;
  use Moose;
  has ContactId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'contactId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/{contactId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GroundStation::DescribeContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::DescribeContact - Arguments for method DescribeContact on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeContact on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method DescribeContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeContact.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $DescribeContactResponse = $groundstation->DescribeContact(
      ContactId => 'MyString',

    );

    # Results:
    my $ContactId         = $DescribeContactResponse->ContactId;
    my $ContactStatus     = $DescribeContactResponse->ContactStatus;
    my $DataflowList      = $DescribeContactResponse->DataflowList;
    my $EndTime           = $DescribeContactResponse->EndTime;
    my $ErrorMessage      = $DescribeContactResponse->ErrorMessage;
    my $GroundStation     = $DescribeContactResponse->GroundStation;
    my $MaximumElevation  = $DescribeContactResponse->MaximumElevation;
    my $MissionProfileArn = $DescribeContactResponse->MissionProfileArn;
    my $PostPassEndTime   = $DescribeContactResponse->PostPassEndTime;
    my $PrePassStartTime  = $DescribeContactResponse->PrePassStartTime;
    my $Region            = $DescribeContactResponse->Region;
    my $SatelliteArn      = $DescribeContactResponse->SatelliteArn;
    my $StartTime         = $DescribeContactResponse->StartTime;
    my $Tags              = $DescribeContactResponse->Tags;

    # Returns a L<Paws::GroundStation::DescribeContactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/DescribeContact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactId => Str

UUID of a contact.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeContact in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

