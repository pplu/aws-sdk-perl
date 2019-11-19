# Generated from json/callargs_class.tt

package Paws::Glue::GetJobBookmark;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has JobName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RunId => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetJobBookmark');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::GetJobBookmarkResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'JobName' => {
                              'type' => 'Str'
                            },
               'RunId' => {
                            'type' => 'Str'
                          }
             },
  'IsRequired' => {
                    'JobName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetJobBookmark - Arguments for method GetJobBookmark on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetJobBookmark on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetJobBookmark.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetJobBookmark.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetJobBookmarkResponse = $glue->GetJobBookmark(
      JobName => 'MyJobName',
      RunId   => 'MyRunId',     # OPTIONAL
    );

    # Results:
    my $JobBookmarkEntry = $GetJobBookmarkResponse->JobBookmarkEntry;

    # Returns a L<Paws::Glue::GetJobBookmarkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetJobBookmark>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobName => Str

The name of the job in question.



=head2 RunId => Str

The unique run identifier associated with this job run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetJobBookmark in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

