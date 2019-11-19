# Generated from default/object.tt
package Paws::KinesisAnalyticsV2::InputLambdaProcessorUpdate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalyticsV2::Types qw//;
  has ResourceARNUpdate => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ResourceARNUpdate' => 1
                  },
  'types' => {
               'ResourceARNUpdate' => {
                                        'type' => 'Str'
                                      }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::InputLambdaProcessorUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::InputLambdaProcessorUpdate object:

  $service_obj->Method(Att1 => { ResourceARNUpdate => $value, ..., ResourceARNUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::InputLambdaProcessorUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceARNUpdate

=head1 DESCRIPTION

For an SQL-based Amazon Kinesis Data Analytics application, represents
an update to the InputLambdaProcessor that is used to preprocess the
records in the stream.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARNUpdate => Str

  The Amazon Resource Name (ARN) of the new AWS Lambda function that is
used to preprocess the records in the stream.

To specify an earlier version of the Lambda function than the latest,
include the Lambda function version in the Lambda function ARN. For
more information about Lambda ARNs, see Example ARNs: AWS Lambda



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

