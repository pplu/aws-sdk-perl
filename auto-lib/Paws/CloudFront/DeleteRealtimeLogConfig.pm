
package Paws::CloudFront::DeleteRealtimeLogConfig;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRealtimeLogConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/delete-realtime-log-config/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'DeleteRealtimeLogConfigRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://cloudfront.amazonaws.com/doc/2020-05-31/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::DeleteRealtimeLogConfig - Arguments for method DeleteRealtimeLogConfig on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRealtimeLogConfig2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method DeleteRealtimeLogConfig2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRealtimeLogConfig2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    $cloudfront->DeleteRealtimeLogConfig(
      ARN  => 'Mystring',    # OPTIONAL
      Name => 'Mystring',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/DeleteRealtimeLogConfig>

=head1 ATTRIBUTES


=head2 ARN => Str

The Amazon Resource Name (ARN) of the real-time log configuration to
delete.



=head2 Name => Str

The name of the real-time log configuration to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRealtimeLogConfig2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

