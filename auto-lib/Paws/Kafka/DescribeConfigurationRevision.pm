
package Paws::Kafka::DescribeConfigurationRevision;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Kafka::Types qw//;
  has Arn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Revision => (is => 'ro', isa => Int, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeConfigurationRevision');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/configurations/{arn}/revisions/{revision}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Kafka::DescribeConfigurationRevisionResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Arn' => {
                          'type' => 'Str'
                        },
               'Revision' => {
                               'type' => 'Int'
                             }
             },
  'IsRequired' => {
                    'Revision' => 1,
                    'Arn' => 1
                  },
  'ParamInURI' => {
                    'Arn' => 'arn',
                    'Revision' => 'revision'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::DescribeConfigurationRevision - Arguments for method DescribeConfigurationRevision on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConfigurationRevision on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method DescribeConfigurationRevision.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConfigurationRevision.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $DescribeConfigurationRevisionResponse =
      $kafka->DescribeConfigurationRevision(
      Arn      => 'My__string',
      Revision => 1,

      );

    # Results:
    my $Arn          = $DescribeConfigurationRevisionResponse->Arn;
    my $CreationTime = $DescribeConfigurationRevisionResponse->CreationTime;
    my $Description  = $DescribeConfigurationRevisionResponse->Description;
    my $Revision     = $DescribeConfigurationRevisionResponse->Revision;
    my $ServerProperties =
      $DescribeConfigurationRevisionResponse->ServerProperties;

    # Returns a L<Paws::Kafka::DescribeConfigurationRevisionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/DescribeConfigurationRevision>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) that uniquely identifies an MSK
configuration and all of its revisions.



=head2 B<REQUIRED> Revision => Int

A string that uniquely identifies a revision of an MSK configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConfigurationRevision in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

