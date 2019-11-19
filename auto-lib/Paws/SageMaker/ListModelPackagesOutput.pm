# Generated from json/callresult_class.tt

package Paws::SageMaker::ListModelPackagesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_ModelPackageSummary/;
  has ModelPackageSummaryList => (is => 'ro', isa => ArrayRef[SageMaker_ModelPackageSummary], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ModelPackageSummaryList' => 1
                  },
  'types' => {
               'ModelPackageSummaryList' => {
                                              'class' => 'Paws::SageMaker::ModelPackageSummary',
                                              'type' => 'ArrayRef[SageMaker_ModelPackageSummary]'
                                            },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListModelPackagesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelPackageSummaryList => ArrayRef[SageMaker_ModelPackageSummary]

An array of C<ModelPackageSummary> objects, each of which lists a model
package.


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of model packages, use it in the subsequent
request.


=head2 _request_id => Str


=cut

1;