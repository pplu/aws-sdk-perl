# Generated from json/callargs_class.tt

package Paws::Glue::GetTags;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetTags');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::GetTagsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ResourceArn' => 1
                  },
  'types' => {
               'ResourceArn' => {
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

Paws::Glue::GetTags - Arguments for method GetTags on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTags on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTags.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetTagsResponse = $glue->GetTags(
      ResourceArn => 'MyGlueResourceArn',

    );

    # Results:
    my $Tags = $GetTagsResponse->Tags;

    # Returns a L<Paws::Glue::GetTagsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource for which to retrieve
tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTags in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

