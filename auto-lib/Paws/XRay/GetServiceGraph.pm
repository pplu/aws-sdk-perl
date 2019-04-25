
package Paws::XRay::GetServiceGraph;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has GroupARN => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetServiceGraph');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ServiceGraph');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::GetServiceGraphResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetServiceGraph - Arguments for method GetServiceGraph on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetServiceGraph on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method GetServiceGraph.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetServiceGraph.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $GetServiceGraphResult = $xray->GetServiceGraph(
      EndTime   => '1970-01-01T01:00:00',
      StartTime => '1970-01-01T01:00:00',
      GroupARN  => 'MyGroupARN',            # OPTIONAL
      GroupName => 'MyGroupName',           # OPTIONAL
      NextToken => 'MyString',              # OPTIONAL
    );

    # Results:
    my $ContainsOldGroupVersions =
      $GetServiceGraphResult->ContainsOldGroupVersions;
    my $EndTime   = $GetServiceGraphResult->EndTime;
    my $NextToken = $GetServiceGraphResult->NextToken;
    my $Services  = $GetServiceGraphResult->Services;
    my $StartTime = $GetServiceGraphResult->StartTime;

    # Returns a L<Paws::XRay::GetServiceGraphResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/GetServiceGraph>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The end of the timeframe for which to generate a graph.



=head2 GroupARN => Str

The ARN of a group to generate a graph based on.



=head2 GroupName => Str

The name of a group to generate a graph based on.



=head2 NextToken => Str

Pagination token. Not used.



=head2 B<REQUIRED> StartTime => Str

The start of the time frame for which to generate a graph.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetServiceGraph in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

