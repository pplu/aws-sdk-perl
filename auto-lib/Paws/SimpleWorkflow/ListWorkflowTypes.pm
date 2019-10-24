# Generated from json/callargs_class.tt

package Paws::SimpleWorkflow::ListWorkflowTypes;
  use Moo;
  use Types::Standard qw/Str Int Bool/;
  use Paws::SimpleWorkflow::Types qw//;
  has Domain => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaximumPageSize => (is => 'ro', isa => Int, predicate => 1);
  has Name => (is => 'ro', isa => Str, predicate => 1);
  has NextPageToken => (is => 'ro', isa => Str, predicate => 1);
  has RegistrationStatus => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ReverseOrder => (is => 'ro', isa => Bool, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListWorkflowTypes');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SimpleWorkflow::WorkflowTypeInfos');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'MaximumPageSize' => {
                                      'type' => 'Int'
                                    },
               'Domain' => {
                             'type' => 'Str'
                           },
               'RegistrationStatus' => {
                                         'type' => 'Str'
                                       },
               'ReverseOrder' => {
                                   'type' => 'Bool'
                                 },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'NextPageToken' => 'nextPageToken',
                       'MaximumPageSize' => 'maximumPageSize',
                       'Domain' => 'domain',
                       'RegistrationStatus' => 'registrationStatus',
                       'ReverseOrder' => 'reverseOrder',
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'Domain' => 1,
                    'RegistrationStatus' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ListWorkflowTypes - Arguments for method ListWorkflowTypes on L<Paws::SimpleWorkflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWorkflowTypes on the
L<Amazon Simple Workflow Service|Paws::SimpleWorkflow> service. Use the attributes of this class
as arguments to method ListWorkflowTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWorkflowTypes.

=head1 SYNOPSIS

    my $swf = Paws->service('SimpleWorkflow');
    my $WorkflowTypeInfos = $swf->ListWorkflowTypes(
      Domain             => 'MyDomainName',
      RegistrationStatus => 'REGISTERED',
      MaximumPageSize    => 1,                # OPTIONAL
      Name               => 'MyName',         # OPTIONAL
      NextPageToken      => 'MyPageToken',    # OPTIONAL
      ReverseOrder       => 1,                # OPTIONAL
    );

    # Results:
    my $NextPageToken = $WorkflowTypeInfos->NextPageToken;
    my $TypeInfos     = $WorkflowTypeInfos->TypeInfos;

    # Returns a L<Paws::SimpleWorkflow::WorkflowTypeInfos> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/swf/ListWorkflowTypes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain in which the workflow types have been
registered.



=head2 MaximumPageSize => Int

The maximum number of results that are returned per call. Use
C<nextPageToken> to obtain further pages of results.



=head2 Name => Str

If specified, lists the workflow type with this name.



=head2 NextPageToken => Str

If C<NextPageToken> is returned there are more results available. The
value of C<NextPageToken> is a unique pagination token for each page.
Make the call again using the returned token to retrieve the next page.
Keep all other arguments unchanged. Each pagination token expires after
60 seconds. Using an expired pagination token will return a C<400>
error: "C<Specified token has exceeded its maximum lifetime>".

The configured C<maximumPageSize> determines how many results can be
returned in a single call.



=head2 B<REQUIRED> RegistrationStatus => Str

Specifies the registration status of the workflow types to list.

Valid values are: C<"REGISTERED">, C<"DEPRECATED">

=head2 ReverseOrder => Bool

When set to C<true>, returns the results in reverse order. By default
the results are returned in ascending alphabetical order of the C<name>
of the workflow types.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWorkflowTypes in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

