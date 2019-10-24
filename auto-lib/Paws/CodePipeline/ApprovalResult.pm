# Generated from default/object.tt
package Paws::CodePipeline::ApprovalResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw//;
  has Status => (is => 'ro', isa => Str, required => 1);
  has Summary => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'Summary' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'Summary' => 'summary'
                     },
  'IsRequired' => {
                    'Status' => 1,
                    'Summary' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ApprovalResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ApprovalResult object:

  $service_obj->Method(Att1 => { Status => $value, ..., Summary => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ApprovalResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Status

=head1 DESCRIPTION

Represents information about the result of an approval request.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => Str

  The response submitted by a reviewer assigned to an approval action
request.


=head2 B<REQUIRED> Summary => Str

  The summary of the current status of the approval request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

