
package Paws::CloudFront::ListDistributionsByRealtimeLogConfig;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Str');
  has RealtimeLogConfigArn => (is => 'ro', isa => 'Str');
  has RealtimeLogConfigName => (is => 'ro', isa => 'Str');


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDistributionsByRealtimeLogConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/distributionsByRealtimeLogConfig/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::ListDistributionsByRealtimeLogConfigResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'ListDistributionsByRealtimeLogConfigRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://cloudfront.amazonaws.com/doc/2020-05-31/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListDistributionsByRealtimeLogConfig - Arguments for method ListDistributionsByRealtimeLogConfig on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDistributionsByRealtimeLogConfig2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method ListDistributionsByRealtimeLogConfig2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDistributionsByRealtimeLogConfig2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $ListDistributionsByRealtimeLogConfigResult =
      $cloudfront->ListDistributionsByRealtimeLogConfig(
      Marker                => 'Mystring',    # OPTIONAL
      MaxItems              => 'Mystring',    # OPTIONAL
      RealtimeLogConfigArn  => 'Mystring',    # OPTIONAL
      RealtimeLogConfigName => 'Mystring',    # OPTIONAL
      );

    # Results:
    my $DistributionList =
      $ListDistributionsByRealtimeLogConfigResult->DistributionList;

# Returns a L<Paws::CloudFront::ListDistributionsByRealtimeLogConfigResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/ListDistributionsByRealtimeLogConfig>

=head1 ATTRIBUTES


=head2 Marker => Str

Use this field when paginating results to indicate where to begin in
your list of distributions. The response includes distributions in the
list that occur after the marker. To get the next page of the list, set
this fieldE<rsquo>s value to the value of C<NextMarker> from the
current pageE<rsquo>s response.



=head2 MaxItems => Str

The maximum number of distributions that you want in the response.



=head2 RealtimeLogConfigArn => Str

The Amazon Resource Name (ARN) of the real-time log configuration whose
associated distributions you want to list.



=head2 RealtimeLogConfigName => Str

The name of the real-time log configuration whose associated
distributions you want to list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDistributionsByRealtimeLogConfig2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

