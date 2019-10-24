
package Paws::PinpointEmail::CreateDeliverabilityTestReport;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::PinpointEmail::Types qw/PinpointEmail_Tag PinpointEmail_EmailContent/;
  has Content => (is => 'ro', isa => PinpointEmail_EmailContent, required => 1, predicate => 1);
  has FromEmailAddress => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ReportName => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[PinpointEmail_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDeliverabilityTestReport');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/email/deliverability-dashboard/test');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::PinpointEmail::CreateDeliverabilityTestReportResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReportName' => {
                                 'type' => 'Str'
                               },
               'FromEmailAddress' => {
                                       'type' => 'Str'
                                     },
               'Tags' => {
                           'class' => 'Paws::PinpointEmail::Tag',
                           'type' => 'ArrayRef[PinpointEmail_Tag]'
                         },
               'Content' => {
                              'class' => 'Paws::PinpointEmail::EmailContent',
                              'type' => 'PinpointEmail_EmailContent'
                            }
             },
  'IsRequired' => {
                    'FromEmailAddress' => 1,
                    'Content' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::CreateDeliverabilityTestReport - Arguments for method CreateDeliverabilityTestReport on L<Paws::PinpointEmail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeliverabilityTestReport on the
L<Amazon Pinpoint Email Service|Paws::PinpointEmail> service. Use the attributes of this class
as arguments to method CreateDeliverabilityTestReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeliverabilityTestReport.

=head1 SYNOPSIS

    my $email = Paws->service('PinpointEmail');
    my $CreateDeliverabilityTestReportResponse =
      $email->CreateDeliverabilityTestReport(
      Content => {
        Raw => {
          Data => 'BlobRawMessageData',

        },    # OPTIONAL
        Simple => {
          Body => {
            Html => {
              Data    => 'MyMessageData',
              Charset => 'MyCharset',       # OPTIONAL
            },
            Text => {
              Data    => 'MyMessageData',
              Charset => 'MyCharset',       # OPTIONAL
            },
          },
          Subject => {
            Data    => 'MyMessageData',
            Charset => 'MyCharset',         # OPTIONAL
          },

        },    # OPTIONAL
      },
      FromEmailAddress => 'MyEmailAddress',
      ReportName       => 'MyReportName',     # OPTIONAL
      Tags             => [
        {
          Key   => 'MyTagKey',
          Value => 'MyTagValue',

        },
        ...
      ],                                      # OPTIONAL
      );

    # Results:
    my $DeliverabilityTestStatus =
      $CreateDeliverabilityTestReportResponse->DeliverabilityTestStatus;
    my $ReportId = $CreateDeliverabilityTestReportResponse->ReportId;

# Returns a L<Paws::PinpointEmail::CreateDeliverabilityTestReportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/CreateDeliverabilityTestReport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => PinpointEmail_EmailContent

The HTML body of the message that you sent when you performed the
predictive inbox placement test.



=head2 B<REQUIRED> FromEmailAddress => Str

The email address that the predictive inbox placement test email was
sent from.



=head2 ReportName => Str

A unique name that helps you to identify the predictive inbox placement
test when you retrieve the results.



=head2 Tags => ArrayRef[PinpointEmail_Tag]

An array of objects that define the tags (keys and values) that you
want to associate with the predictive inbox placement test.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeliverabilityTestReport in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

